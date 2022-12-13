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

  Future<void> createOrUpdateUser(TransactionsCompanion transaction) async {
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
    } else {
      query.where(categories.name.isNull());
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

  Future<void> deleteTransaction(String id) async {
    await (delete(transactions)..where((t) => t.id.equals(id))).go();
  }

  Future<List<Transaction>> getAllTransactions() => select(transactions).get();

  Stream<List<Transaction>> watchAllTransactions() =>
      select(transactions).watch();
}
