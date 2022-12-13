import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMyDatabase extends Mock implements MyDatabase {}

class MockDatabaseConnection extends Mock implements DatabaseConnection {}

class MockTransactionsCompanion extends Mock implements TransactionsCompanion {}

void main() {
  late TransactionsDao dao;
  late MyDatabase db;

  setUp(() {
    db = MyDatabase(NativeDatabase.memory());
    dao = TransactionsDao(db);
  });
  tearDown(() => db.close());

  group('add new transaction', () {
    test('transaction can be created', () async {
      await dao.createOrUpdateTransaction(
        TransactionsCompanion.insert(
          id: 'id',
          categoryName: 'mock category name',
          walletId: 'walletId',
          image: 'image',
          amount: 1,
          dateCreated: DateTime(2000),
          isRepeated: true,
        ),
      );
      final transaction = await dao.getTransactionById('id');

      expect(transaction.categoryName, 'mock category name');
    });
  });

  group('delete transaction', () {
    test('successfully when has the transaction existed', () async {
      await dao.createOrUpdateTransaction(
        TransactionsCompanion.insert(
          id: 'id',
          categoryName: 'mock category name',
          walletId: 'walletId',
          image: 'image',
          amount: 1,
          dateCreated: DateTime(2000),
          isRepeated: true,
        ),
      );

      final result = await dao.deleteTransaction('id');
      expect(result, 1);
    });
  });

  group('get all transactions', () {
    test('return list of transactions', () async {
      final transactions = await dao.getAllTransactions();
      expect(transactions, <Transaction>[]);
    });
  });
  group('watch all transactions with category ', () {
    test('get current transactions list stream', () async {
      final transactionWithCategory =
          await dao.watchTransactionsWithCategory().first;

      expect(transactionWithCategory[0], isA<TransactionWithCategory>());
      expect(
        dao.watchTransactionsWithCategory(),
        isA<Stream<List<TransactionWithCategory>>>(),
      );
    });
  });
  group('watch all transactions', () {
    test('get current transactions list stream', () async {
      expect(dao.watchAllTransactions(), isA<Stream<List<Transaction>>>());
    });
  });

  group('update transaction', () {
    test('with id', () async {
      await dao.createOrUpdateTransaction(
        TransactionsCompanion.insert(
          id: 'id',
          categoryName: 'mock category name',
          walletId: 'walletId',
          image: 'image',
          amount: 1,
          dateCreated: DateTime(2000),
          isRepeated: true,
        ),
      );
      final transaction = await dao.getTransactionById('id');
      expect(transaction.categoryName, 'mock category name');

      await dao.createOrUpdateTransaction(
        TransactionsCompanion.insert(
          id: 'id',
          categoryName: 'updated category name',
          walletId: 'walletId',
          image: 'image2',
          amount: 1,
          dateCreated: DateTime(2000),
          isRepeated: true,
        ),
      );
      final updatedTransaction = await dao.getTransactionById('id');

      expect(updatedTransaction.categoryName, 'updated category name');
    });
  });
}
