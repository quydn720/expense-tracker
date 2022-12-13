import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:injectable/injectable.dart';

import '../../../category/data/models/category_model.dart';

part 'transaction_dao.g.dart';

@DriftAccessor(tables: [Transactions, Categories])
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
  }) {
    final query = select(transactions).join(
      [
        leftOuterJoin(
          categories,
          categories.name.equalsExp(transactions.categoryName),
        )
      ],
    );

    if (categoryName != null) {
      query.where(categories.name.equals(categoryName));
    }

    return query.map((row) {
      return TransactionWithCategory(
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
}
