import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/budget/data/datasources/local_budget_datasource.dart';
import 'package:expense_tracker/features/budget/data/models/budget_model.dart';
import 'package:expense_tracker/features/category/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

part 'budget_dao.g.dart';

@DriftAccessor(tables: [Budgets, Categories])
@injectable
class BudgetsDao extends DatabaseAccessor<MyDatabase> with _$BudgetsDaoMixin {
  BudgetsDao(super.db);

  Future<int> addNewBudget(BudgetsCompanion budget) async {
    return into(budgets).insert(budget);
  }

  Future<void> updateBudget({
    required String budgetId,
    required BudgetsCompanion target,
  }) {
    return (update(budgets)..where((b) => b.id.equals(budgetId))).write(target);
  }

  Stream<List<BudgetWithCategory>> getAllBudgets() {
    return select(budgets)
        .join([
          leftOuterJoin(
            categories,
            categories.name.equalsExp(budgets.categoryName),
          )
        ])
        .map(
          (row) => BudgetWithCategory(
            row.readTable(budgets),
            row.readTable(categories),
          ),
        )
        .watch();
  }

  Future<void> feelingLazy(String id) {
    return (delete(budgets)..where((t) => t.id.equals(id))).go();
  }
}
