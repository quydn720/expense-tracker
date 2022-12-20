import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('map to entity', () {
    expect(
      TransactionWithCategory(
        transaction: Transaction(
          id: 'mock id',
          categoryName: 'mock categoryName',
          walletId: 'walletId',
          amount: 45,
          dateCreated: DateTime(2003),
          isRepeated: false,
        ),
        category: Category(
          name: 'mock categoryName',
          color: Colors.black.value,
          icon: Icons.abc,
        ),
      ).toEntity(),
      TransactionEntity(
        id: 'mock id',
        walletId: 'walletId',
        category: const CategoryEntity(
          name: 'mock categoryName',
          color: Colors.black,
          icon: Icons.abc,
        ),
        dateCreated: DateTime(2003),
        amount: 45,
      ),
    );
  });
}
