import 'package:dartz/dartz.dart';

import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class WatchAllBudget {
  const WatchAllBudget(this._repository);

  final IBudgetRepository _repository;

  Future<Either<Exception, Stream<List<Budget>>>> call() async {
    try {
      final result = _repository.watchAllBudget();
      return right(result);
    } on Exception catch (e) {
      return left(e);
    }
  }
}

@injectable
class GetAllBudgets {
  const GetAllBudgets(this._repository);

  final IBudgetRepository _repository;

  Future<Either<Exception, List<Budget>>> call() async {
    try {
      final result = _repository.getAllBudget();
      return right(result);
    } on Exception catch (e) {
      return left(e);
    }
  }
}
