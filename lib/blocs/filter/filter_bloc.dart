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

  ActiveFilter _filter = ActiveFilter.empty;
  ActiveSort _sort = ActiveSort.newest;

  ActiveFilter get currentFilter => _filter;
  ActiveSort get currentSort => _sort;

  FilterBloc({required this.transactionBloc})
      : super(transactionBloc.state is TransactionLoaded
            ? FilterLoaded(
                (transactionBloc.state as TransactionLoaded).transactions,
                ActiveFilter.empty,
                ActiveSort.newest,
              )
            : const FilterLoading()) {
    on<FilterReseted>(_onResetedFilter);
    on<FilterSubmitted>(_onFilterSubmitted);
    on<TransactionsUpdated>(_onUpdatedTransactions);
    on<SortChanged>(_onSortChanged);
    on<FilterChanged>(_onFilterChanged);
    _transactionSubscription = transactionBloc.stream.listen((state) {
      if (state is TransactionLoaded) {
        add(TransactionsUpdated(state.transactions));
      }
    });
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

  void _onResetedFilter(FilterReseted event, Emitter<FilterState> emit) {
    _filter = ActiveFilter.empty;
    _sort = ActiveSort.newest;
    final state = this.state;
    emit(
      FilterLoaded(
        (state as FilterLoaded).transactions,
        _filter,
        _sort,
      ),
    );
  }

  void _onFilterSubmitted(FilterSubmitted event, Emitter<FilterState> emit) {
    final state = transactionBloc.state;
    if (state is TransactionLoaded) {
      emit(
        FilterLoaded(
          _mapTransactionsToFilteredTransactions(
            state.transactions,
            _filter,
            _sort,
          ),
          _filter,
          _sort,
        ),
      );
    }
  }

  void _onFilterChanged(FilterChanged event, Emitter<FilterState> emit) {
    final state = this.state;
    _filter = event.filter;
    emit(FilterLoaded(
      (state as FilterLoaded).transactions,
      event.filter,
      _sort,
    ));
  }

  void _onSortChanged(SortChanged event, Emitter<FilterState> emit) {
    final state = this.state;
    _sort = event.sort;
    emit(FilterLoaded(
      (state as FilterLoaded).transactions,
      _filter,
      event.sort,
    ));
  }

  void _onUpdatedTransactions(
    TransactionsUpdated event,
    Emitter<FilterState> emit,
  ) {
    emit(FilterLoaded(
      _mapTransactionsToFilteredTransactions(
        (transactionBloc.state as TransactionLoaded).transactions,
        _filter,
        _sort,
      ),
      _filter,
      _sort,
    ));
  }

  @override
  Future<void> close() {
    _transactionSubscription.cancel();
    return super.close();
  }
}
