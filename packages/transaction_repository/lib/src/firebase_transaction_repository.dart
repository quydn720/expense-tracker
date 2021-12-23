import 'package:authentication_repository/authentication_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:transaction_repository/src/entities/entities.dart';
import 'package:transaction_repository/src/models/transaction.dart';
import 'package:transaction_repository/src/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

const cachedTransactionKey = 'cached_transaction_key';

class FirebaseTransactionRepository implements TransactionRepository {
  final userCollection =
      firestore.FirebaseFirestore.instance.collection('users');
  final walletCollection =
      firestore.FirebaseFirestore.instance.collection('wallets');

  final String userId;

  final WalletRepository walletRepository;
  final AuthenticationRepository authenticationRepository;

  final Map<String, List<Transaction>> cachedTransactions;

  FirebaseTransactionRepository({
    required this.walletRepository,
    required this.authenticationRepository,
    required this.cachedTransactions,
  }) : userId = authenticationRepository.currentUser.id;

  @override
  Future<void> addNewTransaction(Transaction transaction) async {
    final transactionCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/transactions');

    int offset = transaction.type == TransactionType.income ? 1 : -1;

    final snap = await walletCollection.doc(transaction.walletId).get();
    final updateWallet = Wallet.fromEntity(WalletEntity.fromSnapshot(snap));
    updateWallet.copyWith(
        amount: updateWallet.amount + transaction.amount * offset);

    walletRepository.updateWallet(updateWallet);

    return transactionCollection
        .doc(transaction.id)
        .set(transaction.toEntity().toDocument());
  }

  @override
  Future<void> deleteTransaction(Transaction transaction) async {
    final transactionCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/transactions');
    int offset = transaction.type == TransactionType.income ? -1 : 1;

    final snap = await walletCollection.doc(transaction.walletId).get();
    Wallet updateWallet = Wallet.fromEntity(WalletEntity.fromSnapshot(snap));

    walletRepository.updateWallet(
      updateWallet.copyWith(
          amount: updateWallet.amount + transaction.amount * offset),
    );
    return transactionCollection.doc(transaction.id).delete();
  }

  @override
  Stream<List<Transaction>> transactions() {
    final transactionCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/transactions');

    return transactionCollection
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      final transactions = snapshot.docs
          .map((doc) =>
              Transaction.fromEntity(TransactionEntity.fromSnapshot(doc)))
          .toList();
      cachedTransactions[cachedTransactionKey] = transactions;
      return transactions;
    });
  }

  @override
  Future<void> updateTransaction(Transaction transaction) {
    final transactionCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/transactions');
    // int offset = transaction.type == TransactionType.income ? -1 : 1;
    // final updatedTransaction = transaction.copyWith(
    //   wallet: transaction.wallet.copyWith(
    //       amount: transaction.wallet.amount + transaction.amount * offset),
    // );
    // walletRepository.updateWallet(
    //   transaction.wallet.copyWith(amount: updatedTransaction.wallet.amount),
    // ); // TODO: fix db issues

    return transactionCollection
        .doc(transaction.id)
        .update(transaction.toEntity().toDocument());
  }

  @override
  List<Transaction> get currentTransaction {
    final value = cachedTransactions[cachedTransactionKey];
    if (value is List<Transaction>) return value;
    return [];
  }

  @override
  Map<DateTime, List<Transaction>> get mapDateTransaction =>
      currentTransaction.groupBy(
        (trans) => DateTime(
          trans.date.year,
          trans.date.month,
          trans.date.day,
        ),
      );
}

extension Iterables<E> on Iterable<E> {
  Map<K, List<E>> groupBy<K>(K Function(E) keyFunction) => fold(
      <K, List<E>>{},
      (Map<K, List<E>> map, E element) =>
          map..putIfAbsent(keyFunction(element), () => <E>[]).add(element));
}
