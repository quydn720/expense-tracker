import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';

abstract class ITransactionRepository {
  Future<List<TransactionEntity>> getAllTransaction();
  Stream<List<TransactionEntity>> watchTransactions({String? category});
  Future<void> addNewTransaction(TransactionEntity transaction);
  Future<void> deleteTransaction(TransactionEntity transaction);
  Future<void> updateTransaction(TransactionEntity transaction);
}
