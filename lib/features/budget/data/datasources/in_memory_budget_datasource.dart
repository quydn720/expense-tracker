import 'package:expense_tracker/features/budget/data/datasources/local_budget_datasource.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:injectable/injectable.dart';

@module
abstract class A {
  @injectable
  List<Budget> get budgets => [];
}

@Injectable(as: IBudgetDataSource)
class InMemoryBudgetDataSource implements IBudgetDataSource {
  InMemoryBudgetDataSource({this.budgets = const []});

  final List<Budget> budgets;

  @override
  Future<void> addBudget(Budget b) async {
    try {
      budgets.add(b);
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
