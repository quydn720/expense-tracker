import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/usecases/create_budget.dart';
import 'package:expense_tracker/features/budget/domain/usecases/get_all_budget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'budget_cubit.freezed.dart';
part 'budget_state.dart';

@injectable
class BudgetCubit extends Cubit<BudgetState> {
  BudgetCubit(
    this._create,
    this._allBudgets,
    this._getAllBudgets,
  ) : super(const BudgetState.loading());
  final CreateBudget _create;
  final WatchAllBudget _allBudgets;
  final GetAllBudgets _getAllBudgets;

  void createNewBudget(Budget budget) {
    emit(const BudgetState.loading());
    _create(budget);
  }

  Future<void> loadBudgets() async {
    final result = await _getAllBudgets();
    result.fold(
      (l) => null,
      (r) => r.isEmpty
          ? emit(const BudgetState.empty())
          : emit(BudgetState.loaded(r)),
    );
  }

  @override
  Future<void> close() {
    print('close budget cubit');
    return super.close();
  }
}
