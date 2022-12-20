import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart';
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMyDatabase extends Mock implements MyDatabase {}

class MockDatabaseConnection extends Mock implements DatabaseConnection {}

class MockTransactionsCompanion extends Mock implements TransactionsCompanion {}

void main() {
  late TransactionsDao dao;
  late CategoriesDao categoriesDao;
  late MyDatabase db;

  late TransactionsCompanion mockTransaction;
  const mockCategoryName = 'mock category name';

  setUp(() {
    db = MyDatabase(NativeDatabase.memory());
    dao = TransactionsDao(db);
    categoriesDao = CategoriesDao(db);

    mockTransaction = TransactionsCompanion.insert(
      id: 'id',
      categoryName: 'mock category name',
      walletId: 'walletId',
      amount: 1,
      dateCreated: DateTime(2000),
      isRepeated: true,
    );
  });

  tearDown(() => db.close());

  group('add new transaction', () {
    test('transaction can be created', () async {
      await dao.createOrUpdateTransaction(mockTransaction);
      final transaction = await dao.getTransactionById('id');

      expect(transaction.categoryName, 'mock category name');
    });
  });

  group('delete transaction', () {
    test('successfully when has the transaction existed', () async {
      await dao.createOrUpdateTransaction(mockTransaction);

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
    test('current transactions list stream', () async {
      final transactionWithCategory = dao.watchTransactionsWithCategory();

      expect(
        transactionWithCategory,
        isA<Stream<List<TransactionWithCategory>>>(),
      );
    });
    test('current transactions with given category', () async {
      final mockCategory = CategoriesCompanion.insert(
        name: mockCategoryName,
        color: Colors.black26.value,
        icon: Icons.abc,
      );
      await categoriesDao.addNewCategory(mockCategory);

      await dao.createOrUpdateTransaction(mockTransaction);

      final transactionWithCategory = await dao
          .watchTransactionsWithCategory(categoryName: mockCategoryName)
          .first;

      expect(transactionWithCategory, isA<List<TransactionWithCategory>>());
    });
  });
  group('watch all transactions', () {
    test('get current transactions list stream', () async {
      expect(dao.watchAllTransactions(), isA<Stream<List<Transaction>>>());
    });
  });

  group('update transaction', () {
    test('with id', () async {
      await dao.createOrUpdateTransaction(mockTransaction);
      final transaction = await dao.getTransactionById('id');
      expect(transaction.categoryName, 'mock category name');

      await dao.createOrUpdateTransaction(
        TransactionsCompanion.insert(
          id: 'id',
          categoryName: 'updated category name',
          walletId: 'walletId',
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
