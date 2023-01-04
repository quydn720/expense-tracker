import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reports_state.dart';
part 'reports_cubit.freezed.dart';

class ReportsCubit extends Cubit<ReportsState> {
  ReportsCubit({
    required ITransactionRepository transactionRepository,
  })  : _transactionRepository = transactionRepository,
        super(const ReportsState());

  final ITransactionRepository _transactionRepository;
  late final StreamSubscription<List<TransactionEntity>> _streamSubscription;

  Future<void> requestSubscription() async {
    emit(state.copyWith(status: ReportStatus.loading));

    _streamSubscription = _transactionRepository.watchTransactions().listen(
      (transactions) {
        emit(
          state.copyWith(
            expenses: transactions.where((t) => t.category.isExpense),
            incomes: transactions.where((t) => t.category.isIncome),
            status: ReportStatus.success,
          ),
        );
      },
      onError: (_, __) => state.copyWith(status: ReportStatus.failure),
    );
  }

  void changePeriod(int index) {
    // final month = state.expenses.filterByPeriod(
    //   Period.values[index],
    //   0,
    // )[0] as List<TransactionEntity>;
    emit(
      state.copyWith(
        period: Period.values[index],
        expenses: state.expenses.filterByPeriod(state.period, 0)[0]
            as List<TransactionEntity>,
        incomes: state.incomes.filterByPeriod(state.period, 0)[0]
            as List<TransactionEntity>,
      ),
    );
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
