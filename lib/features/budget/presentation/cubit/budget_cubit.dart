import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/usecases/create_budget.dart';
import 'package:expense_tracker/features/budget/domain/usecases/get_all_budget.dart';
import 'package:expense_tracker/features/notification/domain/repositories/notification_repository.dart';
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
    this.notificationsDataSource,
  ) : super(const BudgetState.loading());
  final CreateBudget _create;
  final WatchAllBudget _allBudgets;
  final GetAllBudgets _getAllBudgets;
  final LocalNotificationsDataSource notificationsDataSource;

  Future<void> createNewBudget(Budget budget) async {
    emit(const BudgetState.loading());
    if (budget.receiveNotification) {
      final time = DateTime(2022, 12, 31, 1, 32);
      await notificationsDataSource.scheduleNotification(
        id: 1,
        dateTime: time,
        title: budget.category.name,
        amount: budget.amount.toString(),
      );
    }

    await _create(budget);
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
}
