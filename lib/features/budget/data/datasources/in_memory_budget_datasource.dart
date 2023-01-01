import 'dart:async';

import 'package:expense_tracker/features/budget/data/datasources/local_budget_datasource.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@module
abstract class A {
  @injectable
  List<Budget> get budgets => [];
}

// @Singleton(as: IBudgetDataSource)
class InMemoryBudgetDataSource implements IBudgetDataSource {
  InMemoryBudgetDataSource({this.budgets = const []});

  final List<Budget> budgets;

  final _budgetStreamController = BehaviorSubject<List<Budget>>.seeded([
    Budget(
      id: 'id',
      amount: 1,
      spentAmount: 2,
      category: const CategoryEntity(
        name: 'name',
        icon: Icons.abc,
        color: Colors.black,
        categoryType: CategoryType.expense,
      ),
    )
  ]);

  @override
  Stream<List<Budget>> getBudgets() =>
      _budgetStreamController.asBroadcastStream();

  @override
  Future<void> addBudget(Budget b) async {
    try {
      budgets.add(b);
      _budgetStreamController.add([..._budgetStreamController.value, b]);
    } catch (e) {
      throw Exception('budget failure');
    }
  }

  @override
  Future<void> deleteBudget(String budgetId) async {
    try {
      final budgetToDelete = budgets.where((b) => b.id == budgetId);
      if (budgetToDelete.isEmpty) throw Exception('can not find');
      budgets.remove(budgetToDelete.first);
    } catch (e) {
      throw Exception('delete not successful');
    }
  }

  @override
  Future<void> updateBudget(String budgetId, Budget updateBudget) async {
    try {
      final budgetToDelete = budgets.where((b) => b.id == budgetId);
      if (budgetToDelete.isEmpty) throw Exception('can not find');
      final index = budgets.indexOf(budgetToDelete.first);
      budgets[index] = updateBudget;
    } catch (e) {
      throw Exception('update not successful');
    }
  }

  @override
  Future<List<Budget>> getAllBugets() async {
    return budgets;
  }
}
