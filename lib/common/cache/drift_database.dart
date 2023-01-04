import 'dart:io';
import 'dart:math' as math;

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:expense_tracker/features/budget/data/datasources/budget_dao.dart';
import 'package:expense_tracker/features/budget/data/models/budget_model.dart';
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart';
import 'package:expense_tracker/features/category/data/models/category_model.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/wallet/data/datasources/wallet_dao.dart';
import 'package:expense_tracker/features/wallet/data/models/wallet_model.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:flutter/material.dart' hide Table;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'drift_database.g.dart';

@DriftDatabase(
  tables: [Categories, Transactions, Budgets, Wallets],
  daos: [CategoriesDao, TransactionsDao, BudgetsDao, WalletsDao],
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

  int get _randomColorValue => (math.Random().nextDouble() * 0xFFFFFF).toInt();

  Future<void> createInitialRecords() {
    return batch(
      (batch) {
        batch
          ..insertAll(wallets, [
            WalletsCompanion.insert(
              id: 'wallet 1',
              name: 'Your Wallet',
              walletType: 'Wallet',
              balance: 0,
            ),
          ])
          ..insertAll(categories, [
            CategoriesCompanion.insert(
              name: 'Grocery',
              color: _randomColorValue,
              icon: FontAwesomeIcons.calculator,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Subcription',
              color: _randomColorValue,
              icon: Icons.abc,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Food',
              color: _randomColorValue,
              icon: Icons.note,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Others',
              color: _randomColorValue,
              icon: FontAwesomeIcons.moneyBill,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Education',
              color: _randomColorValue,
              icon: FontAwesomeIcons.book,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Invest',
              color: _randomColorValue,
              icon: FontAwesomeIcons.chartLine,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Shopping',
              color: _randomColorValue,
              icon: FontAwesomeIcons.cartShopping,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Family',
              color: _randomColorValue,
              icon: FontAwesomeIcons.house,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Charity',
              color: _randomColorValue,
              icon: FontAwesomeIcons.handHoldingHeart,
              type: CategoryType.expense,
            ),
            CategoriesCompanion.insert(
              name: 'Salary',
              color: _randomColorValue,
              icon: FontAwesomeIcons.building,
              type: CategoryType.income,
            ),
            CategoriesCompanion.insert(
              name: 'Sell',
              color: _randomColorValue,
              icon: FontAwesomeIcons.boxArchive,
              type: CategoryType.income,
            ),
            CategoriesCompanion.insert(
              name: 'Gifted',
              color: _randomColorValue,
              icon: FontAwesomeIcons.gift,
              type: CategoryType.income,
            ),
            CategoriesCompanion.insert(
              name: 'Bonus',
              color: _randomColorValue,
              icon: FontAwesomeIcons.moneyCheckDollar,
              type: CategoryType.income,
            ),
            CategoriesCompanion.insert(
              name: 'Withdrawal',
              color: _randomColorValue,
              icon: FontAwesomeIcons.moneyBillTransfer,
              type: CategoryType.income,
            ),
            CategoriesCompanion.insert(
              name: 'Other',
              color: _randomColorValue,
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

  Stream<List<Wallet>> getWallets() {
    final walletEntries = select(wallets).watch();
    return walletEntries.map(
      (event) => event
          .map(
            (e) => Wallet(
              id: e.id,
              balance: e.balance,
              name: e.name,
              iconPath: 'iconPath',
            ),
          )
          .toList(),
    );
  }

  Future<void> addNewWallet(WalletsCompanion wallet) async {
    await into(wallets).insert(wallet);
  }

  // TODO(quy): stream this value

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
