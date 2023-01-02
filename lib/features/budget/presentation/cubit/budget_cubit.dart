import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:expense_tracker/features/budget/domain/usecases/get_all_budget.dart';
import 'package:expense_tracker/features/notification/domain/repositories/notification_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_cubit.freezed.dart';
part 'budget_state.dart';

class BudgetCubit extends Cubit<BudgetState> {
  BudgetCubit(
    this._getAllBudgets,
    this.notificationsDataSource,
    this._repository,
  ) : super(const BudgetState.loading());

  final IBudgetRepository _repository;
  final GetAllBudgets _getAllBudgets;
  final LocalNotificationsDataSource notificationsDataSource;
  late final StreamSubscription<List<Budget>> _streamSubscription;

  Future<void> requestedSubscription() async {
    emit(const BudgetState.loading());

    _streamSubscription = _repository.watchAllBudget().listen(
      (budgets) {
        emit(BudgetState.loaded(budgets));
      },
      onError: (e) {
        emit(const BudgetError());
      },
    );
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
    _streamSubscription.cancel();
    return super.close();
  }
}
