import 'package:injectable/injectable.dart';
import 'package:transaction_repository/transaction_repository.dart';

@injectable
class AddTransactionUseCase {
  AddTransactionUseCase(this._repository);

  final TransactionRepository _repository;

  Future<void> call(Transaction transaction) async {
    return _repository.addNewTransaction(transaction);
  }
}
