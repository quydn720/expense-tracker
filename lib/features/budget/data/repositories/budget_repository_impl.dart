import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBudgetRepository)
class LocalBudgetRepository implements IBudgetRepository {
  LocalBudgetRepository();

  final List<Budget> budgets = [];

  @override
  Future<void> addNewBudget(Budget budget) async {
    budgets.add(budget);
  }

  @override
  Future<void> deleteBudget(String budgetId) async {
    final budgetToDelete = budgets.where((b) => b.id == budgetId);
    if (budgetToDelete.isEmpty) throw Exception('can not find');
    budgets.remove(budgetToDelete.first);
  }

  @override
  Future<void> updateBudget(String budgetId, Budget budget) {
    throw UnimplementedError();
  }

  @override
  List<Budget> getAllBudget() {
    return [
      const Budget(
        id: 'id',
        amount: 10,
        category: CategoryEntity(
          name: 'name',
          icon: Icons.abc,
          color: Colors.yellow,
          categoryType: CategoryType.expense,
        ),
      )
    ];
    return budgets;
  }

  @override
  Stream<List<Budget>> watchAllBudget() {
    return const Stream.empty();
  }
}
