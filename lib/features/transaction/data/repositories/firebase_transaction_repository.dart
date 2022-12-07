import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';

class FirebaseTransactionRepository implements ITransactionRepository {
  @override
  Future<void> addNewTransaction(TransactionEntity transaction) {
    // TODO: implement addNewTransaction
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTransaction(TransactionEntity transaction) {
    // TODO: implement deleteTransaction
    throw UnimplementedError();
  }

  @override
  List<TransactionEntity> getAllTransaction() {
    // TODO: implement getAllTransaction
    throw UnimplementedError();
  }

  @override
  Future<void> updateTransaction(TransactionEntity transaction) {
    // TODO: implement updateTransaction
    throw UnimplementedError();
  }

  @override
  Stream<List<TransactionEntity>> watchTransactions() {
    // TODO: implement watchTransactions
    throw UnimplementedError();
  }
}
