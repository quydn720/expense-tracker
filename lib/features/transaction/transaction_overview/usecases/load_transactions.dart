import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoadAllTransactions {
  LoadAllTransactions(this._repository);

  final ITransactionRepository _repository;

  Future<List<TransactionEntity>> call() {
    return _repository.watchTransactions().first;
  }
}
