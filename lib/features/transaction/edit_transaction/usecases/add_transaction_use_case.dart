import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/transaction.dart';

@injectable
class AddTransactionUseCase {
  AddTransactionUseCase(this._repository);

  final ITransactionRepository _repository;

  Future<void> call(TransactionEntity transaction) async {
    return _repository.addNewTransaction(transaction);
  }
}

@injectable
class DeleteTransactionUseCase {
  DeleteTransactionUseCase(this._repository);

  final ITransactionRepository _repository;

  Future<void> call(TransactionEntity transaction) async {
    return _repository.deleteTransaction(transaction);
  }
}
