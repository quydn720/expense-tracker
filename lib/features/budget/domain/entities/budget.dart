import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget.freezed.dart';

@freezed
class Budget with _$Budget {
  const factory Budget({
    required String id,
    required double amount,
    required double whenToNotify,
    required CategoryEntity category,
  }) = _Budget;
}
