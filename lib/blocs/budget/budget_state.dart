part of 'budget_bloc.dart';

@freezed
class BudgetState with _$BudgetState {
  const factory BudgetState.budgetsLoading() = BudgetsLoading;
  const factory BudgetState.budgetsLoaded(List<Budget> budgets) = BudgetsLoaded;
}
