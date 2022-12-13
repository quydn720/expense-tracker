import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@dev
@Injectable(as: ITransactionRepository)
class FakeTransactionRepository implements ITransactionRepository {
  FakeTransactionRepository(this._dao) {
    _init();
  }

  final TransactionsDao _dao;

  @override
  Future<void> addNewTransaction(TransactionEntity transaction) async {
    await _dao.createOrUpdateUser(
      TransactionsCompanion(
        id: Value(transaction.id),
        description: Value(transaction.description),
        walletId: Value(transaction.walletId),
        categoryName: Value(transaction.category.name),
        image: Value(transaction.file?.path ?? ''),
        amount: Value(transaction.amount),
        dateCreated: Value(transaction.dateCreated),
        isRepeated: Value(transaction.isRepeated),
      ),
    );
  }

  @override
  List<TransactionEntity> getAllTransaction() => [];

  @override
  Stream<List<TransactionEntity>> watchTransactions({String? category}) {
    return _dao
        .watchTransactionsWithCategory(categoryName: category)
        .map((transactions) {
      return transactions.map((twc) => twc.toEntity()).toList();
    });
  }

  @override
  Future<void> deleteTransaction(TransactionEntity transaction) async {
    await _dao.deleteTransaction(transaction.id);
  }

  @override
  Future<void> updateTransaction(TransactionEntity transaction) {
    throw UnimplementedError();
  }

  Future<void> _init() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    final _cachedTransactions = await _dao.getAllTransactions();
    final c = _cachedTransactions
        .map(
          (e) => TransactionEntity(
            id: e.id,
            dateCreated: e.dateCreated,
            amount: e.amount,
            description: e.description,
            walletId: e.walletId,
            category: const CategoryEntity(
              color: Colors.black,
              icon: Icons.abc,
              name: 'abc',
            ),
          ),
        )
        .toList();
  }
}
