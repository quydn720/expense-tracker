import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:transaction_repository/transaction_repository.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final TransactionBloc transactionBloc;
  late StreamSubscription _transactionSubscription;
  FilterBloc({required this.transactionBloc})
      : super(
          transactionBloc.state is TransactionLoaded
              ? FilterLoaded(
                  (transactionBloc.state as TransactionLoaded).transactions,
                  ActiveFilter.empty,
                  ActiveSort.newest,
                )
              : const FilterLoading(),
        ) {
    on<FilterChanged>(_onFilterChanged);
    on<UpdateTransactions>(_onUpdatedTransactions);
    _transactionSubscription = transactionBloc.stream.listen((state) {
      if (state is TransactionLoaded) {
        add(UpdateTransactions(state.transactions));
      }
    });
  }

  void _onFilterChanged(FilterChanged event, Emitter<FilterState> emit) {
    final state = transactionBloc.state;
    if (state is TransactionLoaded) {
      emit(FilterLoaded(
        _mapTransactionsToFilteredTransactions(
          state.transactions,
          event.filter,
          event.sort,
        ),
        event.filter,
        event.sort,
      ));
    }
  }

  void _onUpdatedTransactions(
    UpdateTransactions event,
    Emitter<FilterState> emit,
  ) {
    final state = this.state;
    final activeFilter =
        state is FilterLoaded ? state.activeFilter : ActiveFilter.empty;
    final activeSort =
        state is FilterLoaded ? state.activeSort : ActiveSort.newest;

    emit(FilterLoaded(
      _mapTransactionsToFilteredTransactions(
        (transactionBloc.state as TransactionLoaded).transactions,
        activeFilter,
        activeSort,
      ),
      activeFilter,
      activeSort,
    ));
  }

  List<Transaction> _mapTransactionsToFilteredTransactions(
      List<Transaction> transactions, ActiveFilter filter, ActiveSort sort) {
    var filteredTransactions = transactions.where(
      (transaction) {
        if (filter == ActiveFilter.empty) {
          return true;
        } else if (filter == ActiveFilter.expense) {
          return transaction.type == TransactionType.expense;
        } else {
          return transaction.type == TransactionType.income;
        }
      },
    ).toList();
    filteredTransactions.sort((a, b) {
      if (sort == ActiveSort.lowest) {
        return a.amount.compareTo(b.amount);
      } else if (sort == ActiveSort.highest) {
        return b.amount.compareTo(a.amount);
      } else if (sort == ActiveSort.oldest) {
        return a.date.compareTo(b.date);
      } else {
        return b.date.compareTo(a.date);
      }
    });
    return filteredTransactions;
  }

  @override
  Future<void> close() {
    _transactionSubscription.cancel();
    return super.close();
  }
}
