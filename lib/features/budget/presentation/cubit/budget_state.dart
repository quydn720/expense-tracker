part of 'budget_cubit.dart';

@freezed
class BudgetState with _$BudgetState {
  const factory BudgetState.empty() = BudgetEmpty;
  const factory BudgetState.loading() = Loading;
  const factory BudgetState.loaded(List<Budget> budgets) = Loaded;
}
