// ignore_for_file: constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:transaction_repository/src/entities/entities.dart';
import 'package:transaction_repository/src/models/transaction.dart';
import 'package:transaction_repository/src/transaction_repository.dart';

const cached_transaction_key = 'cached_transaction_key';

class FirebaseTransactionRepository implements TransactionRepository {
  final transactionCollection =
      firestore.FirebaseFirestore.instance.collection('transactions');
  final Map<String, List<Transaction>> cachedTransaction;

  FirebaseTransactionRepository({required this.cachedTransaction});

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
        .map((snapshot) => snapshot.docs
            .map((doc) => Transaction.fromEntity(
                  TransactionEntity.fromSnapshot(doc),
                ))
            .toList());
  }

  @override
  Future<void> updateTransaction(Transaction transaction) {
    return transactionCollection
        .doc(transaction.id)
        .update(transaction.toEntity().toDocument());
  }

  @override
  List<Transaction> get currentTransactions {
    final value = cachedTransaction[cached_transaction_key];
    if (value is List<Transaction>) return value;
    return [];
  }

  @override
  Map<DateTime, List<Transaction>> get mapDateTransaction {
    throw UnimplementedError();
  }
}
