import 'package:budget_repository/src/entities/budget_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

@immutable
class Budget {
  Budget({
    String? id,
    required this.amount,
    required this.category,
    required this.monthApply,
    this.exceedLimit,
  }) : id = id ?? const Uuid().v4();

  factory Budget.fromEntity(BudgetEntity entity) {
    return Budget(
      id: entity.id,
      amount: entity.amount,
      category: entity.category,
      monthApply: entity.monthApply,
      exceedLimit: entity.exceedLimit,
    );
  }
  final String id;
  final double amount;
  final String category;
  final int monthApply;
  final double? exceedLimit;

  BudgetEntity toEntity() {
    return BudgetEntity(
      id: id,
      amount: amount,
      category: category,
      monthApply: monthApply,
    );
  }

  bool get stringify => true;

  Budget copyWith({
    String? id,
    double? amount,
    String? category,
    int? monthApply,
    double? exceedLimit,
  }) {
    return Budget(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      monthApply: monthApply ?? this.monthApply,
      exceedLimit: exceedLimit ?? this.exceedLimit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Budget &&
        other.id == id &&
        other.amount == amount &&
        other.category == category &&
        other.monthApply == monthApply &&
        other.exceedLimit == exceedLimit;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        amount.hashCode ^
        category.hashCode ^
        monthApply.hashCode ^
        exceedLimit.hashCode;
  }
}
