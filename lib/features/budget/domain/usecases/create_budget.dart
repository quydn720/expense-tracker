import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateBudget {
  const CreateBudget(this._repository);

  final IBudgetRepository _repository;

  Future<Either<Exception, Unit>> call(Budget budget) async {
    try {
      await _repository.addNewBudget(budget);
      return right(unit);
    } on Exception catch (e) {
      return left(e);
    }
  }
}
