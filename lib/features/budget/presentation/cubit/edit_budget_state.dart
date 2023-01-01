part of 'edit_budget_cubit.dart';

@freezed
class EditBudgetState with _$EditBudgetState {
  const factory EditBudgetState({
    @Default(FormzStatus.pure) FormzStatus formzStatus,
    @Default(EditBudgetStatus.initial) EditBudgetStatus status,
    required AmountText amountText,
    required bool receiveAlert,
    required double whenToNotify,
    CategoryEntity? category,
    Budget? initialBudget,
  }) = _EditBudgetState;

  const EditBudgetState._();

  double get amountDouble {
    return double.tryParse(amountText.value) ?? 0;
  }
}

enum EditBudgetStatus { initial, loading, success, failure }

const double _defaultPortionToNotify = 0.75;
const bool _receiveAlert = false;
