import 'package:drift/drift.dart';

import '../transaction_repository.dart';
part 'transaction_dao.g.dart';

@DriftAccessor(tables: [Transactions])
class TransactionsDao extends DatabaseAccessor<AppDatabase>
    with _$TransactionsDaoMixin {
  TransactionsDao(AppDatabase _db) : super(_db);

  Future<List<TransactionEntries>> getAllTransactions() =>
      select(transactions).get();
  Stream<List<TransactionEntries>> watchAllTransactions() =>
      select(transactions).watch();
  Future<void> insertTask(TransactionEntries transaction) =>
      into(transactions).insert(transaction);
  Future<void> updateTask(TransactionEntries transaction) =>
      update(transactions).replace(transaction);
  Future<void> deleteTask(TransactionEntries transaction) =>
      delete(transactions).delete(transaction);
}
