import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/features/budget/data/datasources/local_budget_datasource.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBudgetRepository)
class LocalBudgetRepository implements IBudgetRepository {
  LocalBudgetRepository(this._dataSource);

  final IBudgetDataSource _dataSource;

  @override
  Future<void> addNewBudget(Budget budget) async {
    await _dataSource.addBudget(budget);
  }

  @override
  Future<void> deleteBudget(String budgetId) async {
    try {
      await _dataSource.deleteBudget(budgetId);
    } on LoginFailure {
      return; // left<e>
    }
  }

  @override
  Future<void> updateBudget(String budgetId, Budget budget) async {
    try {
      await _dataSource.updateBudget(budgetId, budget);
    } catch (e) {
      return;
    }
  }

  @override
  Future<List<Budget>> getAllBudget() async {
    return _dataSource.getAllBugets();
  }

  @override
  Stream<List<Budget>> watchAllBudget() {
    return const Stream.empty(); // TODO(quy): create budgets stream
  }
}
