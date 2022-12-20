import 'package:budget_repository/src/models/models.dart';

abstract class BudgetRepository {
  List<Budget> get currentBudget;

  Stream<List<Budget>> budgets();
  Future<void> addNewBudget(Budget budget);
  Future<void> deleteBudget(Budget budget);
  Future<void> updateBudget(Budget budget);
}
