import 'package:drift/drift.dart';

class Budgets extends Table {
  TextColumn get id => text()();
  RealColumn get amount => real()();
  RealColumn get color => real()();
  TextColumn get categoryName => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
