import 'package:injectable/injectable.dart';
import 'package:transaction_repository/transaction_repository.dart';

@injectable
class LoadAllTransactions {
  LoadAllTransactions(this._repository);

  final TransactionRepository _repository;

  Future<List<Transaction>> call() {
    return _repository.transactions().first;
  }
}

@injectable
class AddTransaction {
  AddTransaction(this._repository);

  final TransactionRepository _repository;

  Future<void> call(Transaction transaction) {
    return _repository.addNewTransaction(transaction);
  }
}
