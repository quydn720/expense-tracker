import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/wallet/data/models/wallet_model.dart';
import 'package:injectable/injectable.dart';

part 'wallet_dao.g.dart';

@DriftAccessor(tables: [Wallets])
@injectable
class WalletsDao extends DatabaseAccessor<MyDatabase> with _$WalletsDaoMixin {
  WalletsDao(super.db);

  Future<int> addNewBudget(WalletEntry wallet) async {
    return into(wallets).insert(wallet);
  }

  Stream<double> getAccountBalance() {
    return select(wallets).watch().map(
      (wallets) {
        return wallets.fold<double>(0, (p, w) => p + w.balance);
      },
    );
  }

  Future<void> updateWallet({
    required String budgetId,
    required WalletsCompanion target,
  }) {
    return (update(wallets)..where((b) => b.id.equals(budgetId))).write(target);
  }

  Future<WalletEntry> getEntryById(String id) async {
    return (select(wallets)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  // Stream<List<BudgetWithCategory>> getAllBudgets() {
  //   return select(budgets)
  //       .join([
  //         leftOuterJoin(
  //           categories,
  //           categories.name.equalsExp(budgets.categoryName),
  //         )
  //       ])
  //       .map(
  //         (row) => BudgetWithCategory(
  //           row.readTable(budgets),
  //           row.readTable(categories),
  //         ),
  //       )
  //       .watch();
  // }

  // Future<void> feelingLazy(String id) {
  //   return (delete(budgets)..where((t) => t.id.equals(id))).go();
  // }
}
