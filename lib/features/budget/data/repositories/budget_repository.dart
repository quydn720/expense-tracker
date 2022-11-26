import '../../domain/entities/budget.dart';

abstract class IBudgetRepository {
  Stream<List<Budget>> watchAllBudget();
  List<Budget> getAllBudget();
  Future<void> addNewBudget(Budget budget);
  Future<void> deleteBudget(String budgetId);
  Future<void> updateBudget(Budget budget);
}
