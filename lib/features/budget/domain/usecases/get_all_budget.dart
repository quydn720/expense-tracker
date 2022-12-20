import 'package:dartz/dartz.dart';

import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';

class WatchAllBudget {
  const WatchAllBudget(this._repository);

  final IBudgetRepository _repository;

  Future<Either<Exception, Stream<List<Budget>>>> call(Budget budget) async {
    try {
      final result = _repository.watchAllBudget();
      return right(result);
    } on Exception catch (e) {
      return left(e);
    }
  }
}
