part of 'edit_budget_cubit.dart';

@freezed
class EditBudgetState with _$EditBudgetState {
  const factory EditBudgetState({
    @Default(AmountText.pure()) AmountText amountText,
    @Default(EditBudgetStatus.initial) EditBudgetStatus status,
    @Default(FormzStatus.pure) FormzStatus formzStatus,
    @Default(false) bool receiveAlert,
    @Default(0.75) double whenToNotify,
    CategoryEntity? category,
  }) = _EditBudgetInitial;
}

enum EditBudgetStatus { initial, loading, success, failure }
