import 'models/models.dart';

abstract class TransactionRepository {
  List<Transaction> get currentTransaction;
  Map<DateTime, List<Transaction>> get mapDateTransaction;
  double totalOfCategory(String category);

  Stream<List<Transaction>> transactions();
  Future<void> addNewTransaction(Transaction transaction);
  Future<void> deleteTransaction(Transaction transaction);
  Future<void> updateTransaction(Transaction transaction);
}
