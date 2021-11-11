import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:transaction_repository/src/entities/entities.dart';
import 'package:transaction_repository/src/models/transaction.dart';
import 'package:transaction_repository/src/transaction_repository.dart';

class FirebaseTransactionRepository implements TransactionRepository {
  final transactionCollection =
      firestore.FirebaseFirestore.instance.collection('transactions');

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
    return transactionCollection.snapshots().map((snapshot) => snapshot.docs
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
}
