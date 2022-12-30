import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';

abstract class ITransactionRepository {
  Future<List<TransactionEntity>> getAllTransaction();
  Stream<List<TransactionEntity>> watchTransactions({
    String? category,
    SortBy sortBy,
  });
  Future<void> addNewTransaction(TransactionEntity transaction);
  Future<void> deleteTransaction(String transactionId);
  Future<void> updateTransaction(TransactionEntity transaction);
  Future<List<TransactionEntity>> getAllTransactionWithWalletId(
    String walletId,
  );
}
