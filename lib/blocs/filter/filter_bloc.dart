import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../transaction/transaction_bloc.dart';

part 'filter_bloc.freezed.dart';
part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc({required this.transactionBloc})
      : super(
          transactionBloc.state is TransactionLoaded
              ? FilterLoaded(
                  (transactionBloc.state as TransactionLoaded).transactions,
                  ActiveFilter.empty,
                  ActiveSort.newest,
                  DateTime.now(),
                )
              : const FilterLoading(),
        ) {
    on<FilterReseted>(_onResetedFilter);
    on<FilterSubmitted>(_onFilterSubmitted);
    on<TransactionsUpdated>(_onUpdatedTransactions);
    on<SortChanged>(_onSortChanged);
    on<FilterChanged>(_onFilterChanged);
    on<DateChanged>(_onDateChanged);
    _transactionSubscription = transactionBloc.stream.listen((state) {
      if (state is TransactionLoaded) {
        add(TransactionsUpdated(state.transactions));
      }
    });
  }
  final TransactionBloc transactionBloc;
  late StreamSubscription<TransactionState> _transactionSubscription;

  ActiveFilter _filter = ActiveFilter.empty;
  ActiveSort _sort = ActiveSort.newest;
  DateTime _date = DateTime.now();
  int _filterCount = 0;

  ActiveFilter get currentFilter => _filter;
  ActiveSort get currentSort => _sort;
  DateTime get date => _date;
  String? get filterCountStr =>
      _filterCount > 0 ? _filterCount.toString() : null;
  List<Transaction> _dateChangedTransactions(
    List<Transaction> transactions,
    DateTime date,
  ) {
    final te = transactions.groupBy(
      (trans) => DateTime(
        trans.date.year,
        trans.date.month,
        trans.date.day,
      ),
    );
    final c = te.entries
        .where((e) => e.key.month == date.month)
        .map((e) => e.value)
        .toList()
        .expand((e) => e)
        .toList();
    return c;
  }

  int _getFilterCount() {
    if (_filter != ActiveFilter.empty && _sort != ActiveSort.newest) {
      return 2;
    } else if (_filter == ActiveFilter.empty && _sort == ActiveSort.newest) {
      return 0;
    } else if (_filter != ActiveFilter.empty) {
      return 1;
    } else {
      return 1;
    }
  }

  List<Transaction> _mapTransactionsToFilteredTransactions(
    List<Transaction> transactions,
    ActiveFilter filter,
    ActiveSort sort,
  ) {
    final filteredTransactions = transactions.where(
      (transaction) {
        if (filter == ActiveFilter.empty) {
          return true;
        } else if (filter == ActiveFilter.expense) {
          return transaction.type == TransactionType.expense;
        } else {
          return transaction.type == TransactionType.income;
        }
      },
    ).toList()
      ..sort(
        (a, b) {
          if (sort == ActiveSort.lowest) {
            return a.amount.compareTo(b.amount);
          } else if (sort == ActiveSort.highest) {
            return b.amount.compareTo(a.amount);
          } else if (sort == ActiveSort.oldest) {
            return a.date.compareTo(b.date);
          } else {
            return b.date.compareTo(a.date);
          }
        },
      );
    return filteredTransactions;
  }

  void _onResetedFilter(FilterReseted event, Emitter<FilterState> emit) {
    _filter = ActiveFilter.empty;
    _sort = ActiveSort.newest;
    final state = this.state;
    _filterCount = _getFilterCount();
    emit(
      FilterLoaded(
        (state as FilterLoaded).transactions,
        _filter,
        _sort,
        _date,
      ),
    );
  }

  void _onFilterSubmitted(FilterSubmitted event, Emitter<FilterState> emit) {
    final state = transactionBloc.state;
    _filterCount = _getFilterCount();

    if (state is TransactionLoaded) {
      emit(
        FilterLoaded(
          _dateChangedTransactions(
            _mapTransactionsToFilteredTransactions(
              state.transactions,
              _filter,
              _sort,
            ),
            _date,
          ),
          _filter,
          _sort,
          _date,
        ),
      );
    }
  }

  void _onDateChanged(DateChanged event, Emitter<FilterState> emit) {
    final state = transactionBloc.state;
    _date = event.date;
    if (state is TransactionLoaded) {
      emit(
        FilterLoaded(
          _dateChangedTransactions(state.transactions, event.date),
          _filter,
          _sort,
          _date,
        ),
      );
    }
  }

  void _onFilterChanged(FilterChanged event, Emitter<FilterState> emit) {
    final state = this.state;
    _filterCount = _getFilterCount();
    _filter = event.filter;
    emit(
      FilterLoaded(
        (state as FilterLoaded).transactions,
        event.filter,
        _sort,
        _date,
      ),
    );
  }

  void _onSortChanged(SortChanged event, Emitter<FilterState> emit) {
    final state = this.state;
    _filterCount = _getFilterCount();
    _sort = event.sort;
    emit(
      FilterLoaded(
        (state as FilterLoaded).transactions,
        _filter,
        event.sort,
        _date,
      ),
    );
  }

  void _onUpdatedTransactions(
    TransactionsUpdated event,
    Emitter<FilterState> emit,
  ) {
    emit(
      FilterLoaded(
        _mapTransactionsToFilteredTransactions(
          (transactionBloc.state as TransactionLoaded).transactions,
          _filter,
          _sort,
        ),
        _filter,
        _sort,
        _date,
      ),
    );
  }

  @override
  Future<void> close() {
    _transactionSubscription.cancel();
    return super.close();
  }
}
