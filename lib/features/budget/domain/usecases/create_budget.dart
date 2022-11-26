import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/budget/data/repositories/budget_repository.dart';

import '../entities/budget.dart';

class CreateBudget {
  const CreateBudget(this._repository);

  final IBudgetRepository _repository;

  void call(Budget budget) => _repository.addNewBudget(budget);
}

class ReadBudget {
  const ReadBudget(this._repository);

  final IBudgetRepository _repository;

  Future<Either<Exception, List<Budget>>> call(Budget budget) async {
    try {
      final result = _repository.getAllBudget();
      return right(result);
    } on Exception catch (e) {
      return left(e);
    }
  }
}

class UpdateBudget {
  const UpdateBudget(this._repository);

  final IBudgetRepository _repository;

  Future<Either<Exception, Unit>> call(Budget budget) async {
    try {
      await _repository.updateBudget(budget);
      return right(unit);
    } on Exception catch (e) {
      return left(e);
    }
  }
}

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
