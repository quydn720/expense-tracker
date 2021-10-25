import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/transaction/transaction_failure.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart' as t;

import 'models/wallet.dart';

abstract class ITransactionRepository {
  Stream<Either<TransactionFailure, List<t.Transaction>>> watchAll();
  Future<Either<TransactionFailure, Unit>> create(t.Transaction t);
  Future<Either<TransactionFailure, Unit>> update(t.Transaction t);
  Future<Either<TransactionFailure, Unit>> delete(t.Transaction t);
  // CRUD
  // Read - fetch all, fetch with date, fetch with sorting ?
  Stream<List<Wallet>> getAllWallets();
}
