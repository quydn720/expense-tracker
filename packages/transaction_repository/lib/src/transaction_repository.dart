import 'models/models.dart';

abstract class TransactionRepository {
  List<Transaction> get currentTransactions;
  Map<DateTime, List<Transaction>> get mapDateTransaction;
  Stream<List<Transaction>> transactions();
  Future<void> addNewTransaction(Transaction transaction);
  Future<void> deleteTransaction(Transaction transaction);
  Future<void> updateTransaction(Transaction transaction);
}
