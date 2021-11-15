import 'models/models.dart';

abstract class TransactionRepository {
  Stream<List<Transaction>> transactions();
  Future<void> addNewTransaction(Transaction transaction);
  Future<void> deleteTransaction(Transaction transaction);
  Future<void> updateTransaction(Transaction transaction);
}
