import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@dev
@Injectable(as: ITransactionRepository)
class TransactionRepositoryImpl implements ITransactionRepository {
  TransactionRepositoryImpl(this._dao, this._mapper) {
    _init();
  }

  final TransactionsDao _dao;
  final Mapper _mapper;

  @override
  Future<void> addNewTransaction(TransactionEntity transaction) async {
    await _dao.createOrUpdateTransaction(_mapper.fromEntity(transaction));
  }

  @override
  Future<List<TransactionEntity>> getAllTransaction() async {
    // final result = await _dao.getAllTransactions();
    return [];
  }

  @override
  Stream<List<TransactionEntity>> watchTransactions({
    String? category,
    SortBy sortBy = SortBy.dateCreated,
  }) {
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
  Future<void> updateTransaction(TransactionEntity transaction) async {
    await _dao.updateTransaction(
      transactionId: transaction.id,
      transaction: _mapper.fromEntity(transaction),
    );
  }

  Future<void> _init() async {}

  Future<List<TransactionEntity>> getAllTransactionWithWalletId(
    String walletId,
  ) async {
    final result = await _dao.getAllTransactionWithWalletId(walletId);
    return result.map(_mapper.toEntity).toList();
  }
}

@injectable
class Mapper {
  TransactionsCompanion fromEntity(TransactionEntity transaction) {
    return TransactionsCompanion.insert(
      id: transaction.id,
      description: Value(transaction.description),
      walletId: transaction.walletId,
      categoryName: transaction.category.name,
      image: Value(transaction.file?.path),
      amount: transaction.amount,
      dateCreated: transaction.dateCreated,
      isRepeated: transaction.isRepeated,
    );
  }

  TransactionEntity toEntity(TransactionWithCategory entry) {
    final category = CategoryEntity(
      name: entry.category.name,
      icon: entry.category.icon,
      color: Color(entry.category.color),
      categoryType: entry.category.type,
    );
    return TransactionEntity(
      category: category,
      id: entry.transaction.id,
      description: entry.transaction.description,
      walletId: entry.transaction.walletId,
      amount: entry.transaction.amount,
      dateCreated: entry.transaction.dateCreated,
      isRepeated: entry.transaction.isRepeated,
    );
  }
}