import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';

part 'transaction_dao.g.dart';

@DriftAccessor(tables: [Transactions])
class TransactionsDao extends DatabaseAccessor<MyDatabase>
    with _$TransactionsDaoMixin {
  TransactionsDao(super.db);

  Future<void> createOrUpdateUser(TransactionsCompanion transaction) async {
    await into(transactions).insertOnConflictUpdate(transaction);
  }

  Future<Transaction> getTransactionById(String id) =>
      (select(transactions)..where((t) => t.id.equals(id))).getSingle();
  Future<List<Transaction>> getAllTransactions() => select(transactions).get();
  Stream<List<Transaction>> watchAllTransactions() =>
      select(transactions).watch();
}
