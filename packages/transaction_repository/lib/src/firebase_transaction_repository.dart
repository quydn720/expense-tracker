import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:transaction_repository/src/entities/entities.dart';
import 'package:transaction_repository/src/models/transaction.dart';
import 'package:transaction_repository/src/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

const cachedTransactionKey = 'cached_transaction_key';

class FirebaseTransactionRepository implements TransactionRepository {
  final userCollection =
      firestore.FirebaseFirestore.instance.collection('users');
  final transactionCollection =
      firestore.FirebaseFirestore.instance.collection('transactions');
  final walletCollection =
      firestore.FirebaseFirestore.instance.collection('wallets');

  //TODO: Should move to one app-data-repo for consistency
  final WalletRepository walletRepository;

  final Map<String, List<Transaction>> cachedTransactions;

  FirebaseTransactionRepository({
    required this.walletRepository,
    required this.cachedTransactions,
  });

  @override
  Future<void> addNewTransaction(Transaction transaction) async {
    int offset = transaction.type == TransactionType.income ? 1 : -1;

    final updatedTransaction = transaction.copyWith(
      wallet: transaction.wallet.copyWith(
          amount: transaction.wallet.amount + transaction.amount * offset),
    );
    // walletRepository.updateWallet(
    //   transaction.wallet.copyWith(amount: updatedTransaction.wallet.amount),
    // );

    final c = await walletCollection.doc(transaction.walletId).get();
    final d = WalletEntity.fromSnapshot(c);

    walletRepository.updateWallet(
      Wallet.fromEntity(d).copyWith(amount: updatedTransaction.wallet.amount),
    );

    return transactionCollection
        .doc(updatedTransaction.id)
        .set(updatedTransaction.toEntity().toDocument());
  }

  @override
  Future<void> deleteTransaction(Transaction transaction) async {
    int offset = transaction.type == TransactionType.income ? -1 : 1;

    final updatedTransaction = transaction.copyWith(
      wallet: transaction.wallet.copyWith(
          amount: transaction.wallet.amount + transaction.amount * offset),
    );
    walletRepository.updateWallet(
      transaction.wallet.copyWith(amount: updatedTransaction.wallet.amount),
    );
    return transactionCollection.doc(updatedTransaction.id).delete();
  }

  @override
  Stream<List<Transaction>> transactions() {
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
