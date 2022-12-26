import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/data/models/category_model.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:expense_tracker/features/wallet/data/models/wallet_model.dart';
import 'package:injectable/injectable.dart';

part 'transaction_dao.g.dart';

enum SortBy { amount, dateCreated }

@DriftAccessor(tables: [Transactions, Categories, Wallets])
@injectable
class TransactionsDao extends DatabaseAccessor<MyDatabase>
    with _$TransactionsDaoMixin {
  TransactionsDao(super.db);

  Future<void> createOrUpdateTransaction(
    TransactionsCompanion transaction,
  ) async {
    await into(transactions).insertOnConflictUpdate(transaction);
  }

  Stream<List<TransactionWithCategory>> watchTransactionsWithCategory({
    String? categoryName,
    SortBy sortBy = SortBy.dateCreated,
    OrderingMode mode = OrderingMode.desc,
  }) {
    final query = select(transactions)
      ..orderBy([
        (tran) {
          switch (sortBy) {
            case SortBy.dateCreated:
              return OrderingTerm(expression: tran.dateCreated, mode: mode);
            case SortBy.amount:
              return OrderingTerm(expression: tran.amount, mode: mode);
          }
        }
      ]);

    final joinedCategory = query.join(
      [
        leftOuterJoin(
          categories,
          categories.name.equalsExp(transactions.categoryName),
        ),
        leftOuterJoin(
          wallets,
          wallets.id.equalsExp(transactions.walletId),
        ),
      ],
    );

    if (categoryName != null) {
      joinedCategory.where(categories.name.equals(categoryName));
    }

    return joinedCategory.map((row) {
      return TransactionWithCategory(
        wallet: row.readTable(wallets),
        transaction: row.readTable(transactions),
        category: row.readTable(categories),
      );
    }).watch();
  }

  Future<Transaction> getTransactionById(String id) {
    return (select(transactions)..where((t) => t.id.equals(id))).getSingle();
  }

  /// Return 1 if delete successfully
  Future<int> deleteTransaction(String id) async {
    final query = delete(transactions)..where((t) => t.id.equals(id));
    return query.go();
  }

  Future<List<Transaction>> getAllTransactions() => select(transactions).get();

  Stream<List<Transaction>> watchAllTransactions() =>
      select(transactions).watch();

  Future<void> updateTransaction({
    required String transactionId,
    required TransactionsCompanion transaction,
  }) async {}
}
