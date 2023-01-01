import 'package:drift/drift.dart';

@DataClassName('BudgetEntry')
class Budgets extends Table {
  TextColumn get id => text()();
  RealColumn get amount => real()();
  RealColumn get whenToNotify => real()();
  TextColumn get categoryName => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
