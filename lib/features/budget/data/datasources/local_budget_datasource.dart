import 'dart:async';

import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/budget/data/datasources/budget_dao.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IBudgetDataSource)
class LocalBudgetDataSource implements IBudgetDataSource {
  LocalBudgetDataSource(this._dao);

  final BudgetsDao _dao;

  @override
  Future<void> addBudget(Budget b) async {
    await _dao.addNewBudget(
      BudgetsCompanion.insert(
        id: b.id,
        amount: b.amount,
        categoryName: b.category.name,
        whenToNotify: b.whenToNotify,
      ),
    );
  }

  @override
  Future<void> deleteBudget(String budgetId) {
    // TODO(quy): implement deleteBudget
    throw UnimplementedError();
  }

  @override
  Future<void> updateBudget(String budgetId, Budget updateBudget) async {
    await _dao.updateBudget(
      budgetId: budgetId,
      target: BudgetsCompanion(
        amount: Value(updateBudget.amount),
        categoryName: Value(updateBudget.category.name),
        whenToNotify: Value(updateBudget.whenToNotify),
      ),
    );
  }

  @override
  Future<List<Budget>> getAllBugets() {
    throw UnimplementedError();
  }

  @override
  Stream<List<Budget>> getBudgets() {
    return _dao.getAllBudgets().map(
      (budgets) {
        return budgets
            .map(
              (b) => Budget(
                id: b.budgetEntry.id,
                amount: b.budgetEntry.amount,
                whenToNotify: b.budgetEntry.whenToNotify,
                category: CategoryEntity(
                  name: b.category.name,
                  icon: b.category.icon,
                  color: Color(b.category.color),
                ),
              ),
            )
            .toList();
      },
    );
  }
}

class BudgetWithCategory {
  BudgetWithCategory(this.budgetEntry, this.category);

  final BudgetEntry budgetEntry;
  final Category category;
}

abstract class IBudgetDataSource {
  Future<void> addBudget(Budget b);
  Future<List<Budget>> getAllBugets();
  Future<void> updateBudget(String budgetId, Budget updateBudget);
  Future<void> deleteBudget(String budgetId);
  Stream<List<Budget>> getBudgets();
}
