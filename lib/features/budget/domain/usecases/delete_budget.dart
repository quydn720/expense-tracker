import 'package:dartz/dartz.dart';

import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';

class DeleteBudget {
  const DeleteBudget(this._repository);

  final IBudgetRepository _repository;

  Future<Either<Exception, Unit>> call(String budgetId) async {
    try {
      await _repository.deleteBudget(budgetId);
      return right(unit);
    } on Exception catch (e) {
      return left(e);
    }
  }
}
