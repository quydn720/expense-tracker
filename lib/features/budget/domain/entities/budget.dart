import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget.freezed.dart';

@freezed
class Budget with _$Budget {
  const factory Budget({
    required String id,
    required double amount,
    @Default(0) double spentAmount,
    @Default(0) double whenToNotify,
    required CategoryEntity category,
  }) = _Budget;

  const Budget._();

  bool get receiveNotification => whenToNotify == 0.0;
  bool get isExceed => spentAmount > amount;
}
