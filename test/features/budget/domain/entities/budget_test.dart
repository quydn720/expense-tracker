import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Budget budget;

  group('Budget Entity', () {
    setUp(() {
      budget = Budget(
        id: 'id',
        amount: 100,
        category: const CategoryEntity(
          name: 'category',
          icon: Icons.abc,
          color: Colors.black,
          categoryType: CategoryType.income,
        ),
      );
    });
    test('create successfully', () async {
      expect(budget, isNotNull);
      expect(budget.receiveNotification, false);
    });

    test('receive notification value', () async {
      budget = Budget(
        id: 'id',
        amount: 100,
        category: const CategoryEntity(
          name: 'category',
          icon: Icons.abc,
          color: Colors.black,
          categoryType: CategoryType.income,
        ),
        whenToNotify: 50,
      );
      expect(budget.receiveNotification, true);
    });
    test('isExceed value', () async {
      budget = Budget(
        id: 'id',
        amount: 100,
        spentAmount: 150,
        category: const CategoryEntity(
          name: 'category',
          icon: Icons.abc,
          color: Colors.black,
          categoryType: CategoryType.income,
        ),
        whenToNotify: 50,
      );
      expect(budget.isExceed, true);
    });
  });
}
