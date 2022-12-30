import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:expense_tracker/features/transaction/data/repositories/transaction_repository_impl.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTransactionsDao extends Mock implements TransactionsDao {}

class MockTransactionEntity extends Mock implements TransactionEntity {}

class MockTransactionWithCategory extends Mock
    implements TransactionWithCategory {}

class MockMapper extends Mock implements Mapper {}

class MockTransactionsCompanion extends Mock implements TransactionsCompanion {}

class MockCategoryEntity extends Mock implements CategoryEntity {}

void main() {
  late TransactionRepositoryImpl repo;
  late TransactionsDao dao;
  late TransactionEntity transaction;
  late TransactionWithCategory transactionWithCategory;
  late Mapper mapper;

  setUp(() {
    dao = MockTransactionsDao();
    mapper = MockMapper();
    transaction = MockTransactionEntity();
    repo = TransactionRepositoryImpl(dao, mapper);
    transactionWithCategory = MockTransactionWithCategory();

    registerFallbackValue(MockTransactionEntity());
    registerFallbackValue(MockTransactionsCompanion());
  });
  group('fake transaction repository test', () {
    test('delete calls dao.deleteTransaction()', () async {
      when(() => transaction.id).thenReturn('mock id');
      when(() => dao.deleteTransaction(any())).thenAnswer((_) async => 1);

      await repo.deleteTransaction(transaction);

      verify(() => dao.deleteTransaction(transaction.id)).called(1);
    });

    test('watch transactions', () async {
      when(() => transactionWithCategory.toEntity()).thenReturn(transaction);
      when(dao.watchTransactionsWithCategory).thenAnswer(
        (_) => Stream.fromIterable([
          [transactionWithCategory]
        ]),
      );

      final stream = repo.watchTransactions();

      verify(() => dao.watchTransactionsWithCategory()).called(1);
      expect(stream, emits([transaction]));
    });
    test('add new transaction', () async {
      final transactionCompanion = MockTransactionsCompanion();
      when(() => mapper.fromEntity(any())).thenReturn(transactionCompanion);
      when(() => dao.createOrUpdateTransaction(any())).thenAnswer((_) async {});

      await repo.addNewTransaction(transaction);

      verify(() => dao.createOrUpdateTransaction(transactionCompanion))
          .called(1);
    });
    test('add new transaction', () async {
      final mockTransaction = MockTransactionsCompanion();
      when(() => mockTransaction.id).thenReturn(const Value('mock id'));
      when(() => transaction.id).thenReturn('mock id');
      when(() => mapper.fromEntity(transaction)).thenReturn(mockTransaction);
      when(
        () => dao.updateTransaction(
          transactionId: any(named: 'transactionId'),
          transaction: mockTransaction,
        ),
      ).thenAnswer((_) async {});

      await repo.updateTransaction(transaction);

      verify(
        () => dao.updateTransaction(
          transactionId: 'mock id',
          transaction: mockTransaction,
        ),
      ).called(1);
    });
    test('get all transaction', () async {
      when(() => dao.getAllTransactions()).thenAnswer((_) async => []);

      await repo.getAllTransaction();

      verify(() => dao.getAllTransactions()).called(1);
    });
    test('mapper map correctly', () async {
      final category = MockCategoryEntity();
      when(() => category.name).thenReturn('mock category name');
      mapper = Mapper();

      when(() => transaction.id).thenReturn('mock id');
      when(() => transaction.walletId).thenReturn('wallet id');
      when(() => transaction.category).thenReturn(category);
      when(() => transaction.amount).thenReturn(1);
      when(() => transaction.dateCreated).thenReturn(DateTime(2000));
      when(() => transaction.isRepeated).thenReturn(false);
      when(() => transaction.description).thenReturn('des');

      final transactionCompanion = mapper.fromEntity(transaction);

      expect(transactionCompanion.id.value, transaction.id);
      expect(transactionCompanion, isA<TransactionsCompanion>());
    });
  });
}
