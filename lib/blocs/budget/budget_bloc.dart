import 'package:bloc/bloc.dart';
import 'package:budget_repository/budget_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_event.dart';
part 'budget_state.dart';
part 'budget_bloc.freezed.dart';

class BudgetBloc extends Bloc<BudgetEvent, BudgetState> {
  final BudgetRepository budgetRepository;
  BudgetBloc(this.budgetRepository)
      : super(const BudgetState.budgetsLoading()) {
    on<LoadBudgets>(_onLoadBudgets);
    on<BudgetsUpdated>(_onBudgetsUpdated);
    on<AddBudget>(_onAddBudget);
    on<UpdateBudget>(_onUpdateBudget);
    on<DeleteBudget>(_onDeleteBudget);
  }

  Future<void> _onLoadBudgets(LoadBudgets event, Emitter<BudgetState> emit) {
    return emit.onEach<List<Budget>>(
      budgetRepository.budgets(),
      onData: (buds) => add(
        (BudgetEvent.budgetUpdated(buds)),
      ),
    );
  }

  void _onBudgetsUpdated(BudgetsUpdated event, Emitter<BudgetState> emit) {
    emit(BudgetState.budgetsLoaded(event.budgets));
  }

  void _onAddBudget(AddBudget event, Emitter<BudgetState> emit) {
    budgetRepository.addNewBudget(event.budget);
  }

  void _onUpdateBudget(UpdateBudget event, Emitter<BudgetState> emit) {
    budgetRepository.updateBudget(event.updatedBudget);
  }

  void _onDeleteBudget(DeleteBudget event, Emitter<BudgetState> emit) {
    budgetRepository.deleteBudget(event.budget);
  }
}
