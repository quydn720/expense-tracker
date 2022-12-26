import 'package:drift/drift.dart';

@DataClassName('WalletEntry')
class Wallets extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get walletType => text()();
  RealColumn get balance => real()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
