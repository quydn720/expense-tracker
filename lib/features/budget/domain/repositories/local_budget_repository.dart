import '../../data/repositories/budget_repository.dart';
import '../entities/budget.dart';

class LocalBudgetRepository implements IBudgetRepository {
  LocalBudgetRepository(this.budgets);

  final List<Budget> budgets;
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
  Future<void> updateBudget(Budget budget) {
    // TODO: implement updateBudget
    throw UnimplementedError();
  }

  @override
  List<Budget> getAllBudget() {
    return budgets;
  }

  @override
  Stream<List<Budget>> watchAllBudget() {
    return const Stream.empty();
  }
}
