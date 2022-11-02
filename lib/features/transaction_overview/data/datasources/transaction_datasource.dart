import 'package:transaction_repository/transaction_repository.dart';

abstract class ITransactionDataSource {
  Stream<Transaction> transaction();
  Future<void> addNewTransactions(Transaction transaction);
  Future<void> updateTransactions(String id, Transaction transaction);
  Future<void> deleteTransactions(String id);
}
