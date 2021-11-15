import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:transaction_repository/src/entities/entities.dart';
import 'package:transaction_repository/src/models/transaction.dart';
import 'package:transaction_repository/src/transaction_repository.dart';

const cachedTransactionKey = 'cached_transaction_key';

class FirebaseTransactionRepository implements TransactionRepository {
  final transactionCollection =
      firestore.FirebaseFirestore.instance.collection('transactions');
  final walletCollection =
      firestore.FirebaseFirestore.instance.collection('wallets');

  final Map<String, List<Transaction>> cachedTransactions;

  FirebaseTransactionRepository({required this.cachedTransactions});
// TODO: A AppRepo wrapper - with all 3 repo
// When we add transaction, we want to call update wallet at WalletRepo

  @override
  Future<void> addNewTransaction(Transaction transaction) {
    return transactionCollection
        .doc(transaction.id)
        .set(transaction.toEntity().toDocument());
  }

  @override
  Future<void> deleteTransaction(Transaction transaction) async {
    return transactionCollection.doc(transaction.id).delete();
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
