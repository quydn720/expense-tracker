import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateBudget {
  const UpdateBudget(this._repository);

  final IBudgetRepository _repository;

  Future<Either<Exception, Unit>> call(String budgetId, Budget budget) async {
    try {
      await _repository.updateBudget(budgetId, budget);
      return right(unit);
    } on Exception catch (e) {
      return left(e);
    }
  }
}
