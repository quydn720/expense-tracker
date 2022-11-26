import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/budget/domain/usecases/create_budget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/budget.dart';

part 'budget_state.dart';
part 'budget_cubit.freezed.dart';

class BudgetCubit extends Cubit<BudgetState> {
  BudgetCubit(this._create) : super(const BudgetState.loading());
  final CreateBudget _create;

  void createNewBudget(Budget budget) {
    emit(const BudgetState.loading());
    _create(budget);
  }

  void loadBudgets() {}
}
