import 'package:drift/drift.dart';

@DataClassName('TransactionEntries')
class Transactions extends Table {
  TextColumn get id => text()();
  RealColumn get amount => real()();
  TextColumn get category => text()();
  TextColumn get description => text()();
  IntColumn get type => integer()();
  TextColumn get walletId => text()();
}
