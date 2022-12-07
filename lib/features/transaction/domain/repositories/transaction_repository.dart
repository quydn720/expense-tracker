
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';

abstract class ITransactionRepository {
  List<TransactionEntity> getAllTransaction();
  Stream<List<TransactionEntity>> watchTransactions();
  Future<void> addNewTransaction(TransactionEntity transaction);
  Future<void> deleteTransaction(TransactionEntity transaction);
  Future<void> updateTransaction(TransactionEntity transaction);
}
