import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:expense_tracker/features/wallet/data/models/wallet_model.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:injectable/injectable.dart';

part 'wallet_dao.g.dart';

@DriftAccessor(tables: [Wallets, Transactions])
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

  Stream<List<Wallet>> getWallets() {
    final walletEntries = select(wallets).watch();
    return walletEntries.map(
      (event) => event
          .map(
            (e) => Wallet(
              id: e.id,
              balance: e.balance,
              name: e.name,
              iconPath: 'iconPath',
            ),
          )
          .toList(),
    );
  }

  Future<void> addNewWallet(WalletsCompanion wallet) async {
    await into(wallets).insert(wallet);
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

  Future<int> deleteWallet(String id) async {
    return transaction(() async {
      // Delete all transactions with match walletId
      await (delete(transactions)..where((t) => t.walletId.equals(id))).go();
      // Delete the wallet
      return (delete(wallets)..where((c) => c.id.equals(id))).go();
    });
  }
}
