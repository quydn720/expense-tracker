import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/l10n/gen/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    required String name,
    required IconData icon,
    required Color color,
    @Default(CategoryType.expense) CategoryType categoryType,
  }) = _CategoryEntity;

  const CategoryEntity._();

  Color get backgroundColor => color.withOpacity(0.2);

  bool get isEmpty => name.isEmpty;
  bool get isExpense => categoryType == CategoryType.expense;
  bool get isIncome => categoryType == CategoryType.income;

  Iterable<TransactionEntity> filteredTransactions(
    Iterable<TransactionEntity> transactions,
  ) {
    return transactions.where((element) => element.category == this);
  }
}

enum CategoryType { expense, income }

extension CategoryTypeStr on CategoryType {
  String trans(AppLocalizations dict) {
    switch (this) {
      case CategoryType.expense:
        return dict.expense;
      case CategoryType.income:
        return dict.income;
    }
  }
}
