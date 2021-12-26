part of 'budget_bloc.dart';

@freezed
class BudgetEvent with _$BudgetEvent {
  const factory BudgetEvent.loadBudgets() = LoadBudgets;
  const factory BudgetEvent.addBudget(Budget budget) = AddBudget;
  const factory BudgetEvent.deleteBudget(Budget budget) = DeleteBudget;
  const factory BudgetEvent.updateBudget(Budget updatedBudget) = UpdateBudget;
  const factory BudgetEvent.budgetUpdated(List<Budget> budgets) =
      BudgetsUpdated;
}
