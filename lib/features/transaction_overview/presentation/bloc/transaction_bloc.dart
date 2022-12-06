import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:transaction_repository/transaction_repository.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(
    this._repository,
  ) : super(const TransactionsLoading()) {
    on<TransactionsSubscriptionRequested>(_onTransactionsSubscriptionRequested);
  }

  Future<void> _onTransactionsSubscriptionRequested(
    TransactionsSubscriptionRequested event,
    Emitter<TransactionState> emit,
  ) async {
    await emit.forEach<List<Transaction>>(
      _repository.transactions(),
      onData: (trans) {
        return TransactionsLoaded(transactions: trans);
      },
    );
  }

  final TransactionRepository _repository;
}
