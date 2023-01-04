import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/features/wallet/data/datasources/wallet_dao.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@dev
@Injectable(as: ITransactionRepository)
class TransactionRepositoryImpl implements ITransactionRepository {
  TransactionRepositoryImpl(this._dao, this._mapper, this._walletDao) {
    _init();
  }

  final TransactionsDao _dao;
  final WalletsDao _walletDao;
  final Mapper _mapper;

  @override
  Future<void> addNewTransaction(TransactionEntity transaction) async {
    final transactionDto = _mapper.fromEntity(transaction);
    await _dao.createOrUpdateTransaction(transactionDto);

    final w = await _walletDao.getEntryById(transaction.walletId);

    await _walletDao.updateWallet(
      budgetId: transaction.walletId,
      target: WalletsCompanion(
        balance: Value(w.balance + transactionDto.amount.value),
      ),
    );
  }

  @override
  Future<List<TransactionEntity>> getAllTransaction() async {
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
  Future<void> deleteTransaction(String transactionId) async {
    final t = await _dao.getTransactionById(transactionId);
    final w = await _walletDao.getEntryById(t.walletId);

    print(t.amount);

    await _walletDao.updateWallet(
      budgetId: t.walletId,
      target: WalletsCompanion(
        balance: Value(w.balance - t.amount),
      ),
    );
    await _dao.deleteTransaction(transactionId);
  }

  @override
  Future<void> updateTransaction(TransactionEntity transaction) async {
    await _dao.updateTransaction(
      transactionId: transaction.id,
      transaction: _mapper.fromEntity(transaction),
    );
  }

  Future<void> _init() async {
    print('crate tran repo');
  }

  @override
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
      amount: transaction.amountToSaveToDb,
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
