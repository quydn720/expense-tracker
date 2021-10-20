import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/transaction/transaction_failure.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart' as t;

abstract class ITransactionRepository {
  Stream<Either<TransactionFailure, List<t.Transaction>>> watchAll();
  Future<void> createNewTransaction();
  Future<void> updateTransaction();
  Future<void> deleteTransaction();
  // CRUD
  // Read - fetch all, fetch with date, fetch with sorting ?
}
