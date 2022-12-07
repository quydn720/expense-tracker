import 'package:drift/drift.dart';

class Transactions extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get walletId => text()();
  TextColumn get description => text().nullable()();
  TextColumn get image => text()(); // should be in a converter
  RealColumn get amount => real()();
  DateTimeColumn get transactionCreatedAt => dateTime()();
  BoolColumn get isRepeated => boolean()();

  @override
  Set<Column<Object>>? get primaryKey => {name};
}
