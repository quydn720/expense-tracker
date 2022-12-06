import 'package:drift/drift.dart';

@DataClassName('Category')
class Categories extends Table {
  TextColumn get name => text()();
  IntColumn get color => integer()();
  IntColumn get iconCodePoint => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {name};
}
