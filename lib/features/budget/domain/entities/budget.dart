import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget.freezed.dart';

@freezed
class Budget with _$Budget {
  factory Budget({
    @Default('') String id,
    @Default(0) double amount,
    @Default(0) double spentAmount,
    @Default(0) double whenToNotify,
    @Default(_emptyCategory) CategoryEntity category,
  }) = _Budget;

  const Budget._();

  bool get receiveNotification => whenToNotify != 0.0;
  bool get isExceed => spentAmount > amount;
}

const CategoryEntity _emptyCategory = CategoryEntity(
  name: '',
  icon: Icons.abc,
  color: Colors.transparent,
);
