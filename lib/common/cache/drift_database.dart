import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:expense_tracker/features/budget/data/models/budget_model.dart';
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart';
import 'package:expense_tracker/features/category/data/models/category_model.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/wallet/data/models/wallet_model.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:flutter/material.dart' hide Table;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'drift_database.g.dart';

@DriftDatabase(
  tables: [Categories, Transactions, Budgets, Wallets],
  daos: [CategoriesDao, TransactionsDao],
)
class MyDatabase extends _$MyDatabase {
  MyDatabase(super.e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
        await createInitialRecords();
      },
    );
  }

  Future<void> createInitialRecords() {
    return batch(
      (batch) {
        batch
          ..insertAll(wallets, [
            WalletsCompanion.insert(
              id: 'wallet 1',
              name: 'Bank 1',
              walletType: 'Bank',
              balance: 100,
            ),
            WalletsCompanion.insert(
              id: 'wallet 2',
              name: 'Bank 2',
              walletType: 'Bank',
              balance: 200,
            ),
            WalletsCompanion.insert(
              id: 'wallet 3',
              name: 'Wallet 1',
              walletType: 'Wallet',
              balance: 150,
            ),
          ])
          ..insertAll(categories, [
            CategoriesCompanion.insert(
              name: 'Grocery',
              color: const Color(0xffFCAC12).value,
              icon: FontAwesomeIcons.calculator,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Subcription',
              color: const Color(0xff7F3DFF).value,
              icon: Icons.abc,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Food',
              color: const Color(0xffFD3C4A).value,
              icon: Icons.note,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Salary',
              color: const Color(0xffFCAC12).value,
              icon: FontAwesomeIcons.calculator,
              type: CategoryType.income,
            ),
            CategoriesCompanion.insert(
              name: 'Sell',
              color: const Color(0xff7F3DFF).value,
              icon: Icons.abc,
              type: CategoryType.income,
            ),
            CategoriesCompanion.insert(
              name: 'Gifted',
              color: const Color(0xffFD3C4A).value,
              icon: Icons.note,
              type: CategoryType.income,
            ),
          ]);
      },
    );
  }

  Stream<List<Object>> watchTransactionsWithCategory({
    String? categoryName,
  }) {
    final query = select(transactions).join(
      [
        leftOuterJoin(
          categories,
          categories.name.equalsExp(transactions.categoryName),
        ),
        leftOuterJoin(
          wallets,
          wallets.id.equalsExp(transactions.walletId),
        ),
      ],
    );

    if (categoryName != null) {
      query.where(categories.name.equals(categoryName));
    }

    return query.map((row) {
      return TransactionWithCategory(
        wallet: row.readTable(wallets),
        transaction: row.readTable(transactions),
        category: row.readTable(categories),
      );
    }).watch();
  }

  Future<List<Wallet>> getAllWallets() async {
    final walletEntries = await select(wallets).get();
    return walletEntries
        .map(
          (w) => Wallet(
            id: w.id,
            balance: w.balance,
            name: w.name,
            iconPath: '',
          ),
        )
        .toList();
  }

  Future<List<TransactionEntity>> getAllTransactionWithWalletId(
    String walletId,
  ) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    final transaction = (select(transactions)
      ..where(
        (u) => u.walletId.equals(walletId),
      ));

    final c = transaction.join([
      leftOuterJoin(
        categories,
        categories.name.equalsExp(transactions.categoryName),
      ),
    ]);

    return c.map(
      (row) {
        final a1 = row.readTable(transactions);
        // final a2 = row.readTable(wallets);
        final a3 = row.readTable(categories);
        final category = CategoryEntity(
          name: a3.name,
          icon: a3.icon,
          color: Color(a3.color),
          categoryType: a3.type,
        );

        return TransactionEntity(
          id: a1.id,
          category: category,
          dateCreated: a1.dateCreated,
          amount: a1.amount,
          walletId: walletId,
          description: a1.description,
        );
      },
    ).get();
  }
}

LazyDatabase openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase(file);
  });
}
