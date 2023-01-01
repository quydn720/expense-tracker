import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';

abstract class IBudgetRepository {
  Stream<List<Budget>> watchAllBudget();
  Future<List<Budget>> getAllBudget();
  Future<Either<BudgetRepositoryFailure, Unit>> addNewBudget(Budget budget);
  Future<Either<BudgetRepositoryFailure, Unit>> deleteBudget(String budgetId);
  Future<Either<BudgetRepositoryFailure, Unit>> updateBudget({
    required String budgetId,
    required Budget budget,
  });
}

class BudgetRepositoryFailure implements Exception {
  BudgetRepositoryFailure([this.message = '']);
  final String message;
}
