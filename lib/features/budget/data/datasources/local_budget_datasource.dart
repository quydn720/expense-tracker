import 'dart:async';

import 'package:expense_tracker/features/budget/domain/entities/budget.dart';

class LocalBudgetDataSource implements IBudgetDataSource {
  @override
  Future<void> addBudget(Budget b) {
    // TODO(quy): implement addBudget
    throw UnimplementedError();
  }

  @override
  Future<void> deleteBudget(String budgetId) {
    // TODO(quy): implement deleteBudget
    throw UnimplementedError();
  }

  @override
  Future<void> updateBudget(String budgetId, Budget updateBudget) {
    // TODO(quy): implement editBudget
    throw UnimplementedError();
  }

  @override
  Future<List<Budget>> getAllBugets() {
    // TODO(quy): implement getAllBugets
    throw UnimplementedError();
  }

  @override
  Stream<List<Budget>> getBudgets() {
    // TODO: implement getBudgets
    throw UnimplementedError();
  }

  @override
  FutureOr dispose() {
    // TODO: implement dispose
    throw UnimplementedError();
  }
}

abstract class IBudgetDataSource {
  Future<void> addBudget(Budget b);
  Future<List<Budget>> getAllBugets();
  Future<void> updateBudget(String budgetId, Budget updateBudget);
  Future<void> deleteBudget(String budgetId);
  Stream<List<Budget>> getBudgets();
}
