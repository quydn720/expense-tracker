import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/budget/data/datasources/local_budget_datasource.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IBudgetRepository)
class LocalBudgetRepository implements IBudgetRepository {
  LocalBudgetRepository({
    required IBudgetDataSource dataSource,
  }) : _dataSource = dataSource;

  final IBudgetDataSource _dataSource;

  Stream<List<Budget>> getBudgets() => _dataSource.getBudgets();

  @override
  Future<List<Budget>> getAllBudget() async {
    return _dataSource.getAllBugets();
  }

  @override
  Stream<List<Budget>> watchAllBudget() => _dataSource.getBudgets();

  @override
  Future<Either<BudgetRepositoryFailure, Unit>> addNewBudget(
    Budget budget,
  ) async {
    try {
      await _dataSource.addBudget(budget);
      return right(unit);
    } catch (_) {
      return left(BudgetRepositoryFailure('add new budget failed'));
    }
  }

  @override
  Future<Either<BudgetRepositoryFailure, Unit>> deleteBudget(
    String budgetId,
  ) async {
    try {
      await _dataSource.deleteBudget(budgetId);
      return right(unit);
    } catch (_) {
      return left(BudgetRepositoryFailure());
    }
  }

  @override
  Future<Either<BudgetRepositoryFailure, Unit>> updateBudget({
    required String budgetId,
    required Budget budget,
  }) async {
    try {
      await _dataSource.updateBudget(budgetId, budget);
      return right(unit);
    } catch (_) {
      return left(BudgetRepositoryFailure());
    }
  }
}
