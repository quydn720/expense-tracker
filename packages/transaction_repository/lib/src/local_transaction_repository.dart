import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart' show debugPrint;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:transaction_repository/src/transaction_dao.dart';

import 'models/models.dart';
import 'transaction_repository.dart';

part 'local_transaction_repository.g.dart';

@DriftDatabase(tables: [Transactions])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file, logStatements: true);
  });
}

@DataClassName('TransactionEntries')
class Transactions extends Table {
  TextColumn get id => text()();
  RealColumn get amount => real()();
  TextColumn get category => text()();
  TextColumn get description => text()();
  IntColumn get type => integer()();
  TextColumn get walletId => text()();
}

class LocalTransactionRepository implements TransactionRepository {
  LocalTransactionRepository(this._dao);

  final TransactionsDao _dao;

  @override
  Future<void> addNewTransaction(Transaction transaction) async {
    final t = TransactionEntries(
      id: transaction.id,
      amount: transaction.amount,
      category: transaction.category.name,
      description: transaction.description,
      type: transaction.type.index,
      walletId: transaction.walletId,
    );
    await _dao.insertTask(t);
    debugPrint('add sucessfully');
  }

  @override
  List<Transaction> get currentTransaction => [];
  //  database.select(database.transactionEntries).get();

  @override
  Future<void> deleteTransaction(Transaction transaction) {
    throw UnimplementedError();
  }

  @override
  // TODO: implement mapDateTransaction
  Map<DateTime, List<Transaction>> get mapDateTransaction =>
      throw UnimplementedError();

  @override
  double totalOfCategory(String category) {
    // TODO: implement totalOfCategory
    throw UnimplementedError();
  }

  @override
  Stream<List<Transaction>> transactions() {
    throw UnimplementedError();
  }
  //  database.transactions.map(
  //       (event) {
  //         return event
  //             .map(
  //               (e) {
  //                 return Transaction(
  //                   amount: e.amount,
  //                   category: Category.empty(),
  //                   walletId: e.walletId,
  //                   type: TransactionType.expense,
  //                 );
  //               },
  //             )
  //             .toList()
  //             .reversed
  //             .toList();
  //       },
  //     );

  @override
  Future<void> updateTransaction(Transaction transaction) {
    // TODO: implement updateTransaction
    throw UnimplementedError();
  }
}
