import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:transaction_repository/transaction_repository.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(
    this._repository,
  ) : super(TransactionsLoading()) {
    on<TransactionsSubscriptionRequested>(_onTransactionsSubscriptionRequested);
  }

  Future<void> _onTransactionsSubscriptionRequested(
    TransactionsSubscriptionRequested event,
    Emitter<TransactionState> emit,
  ) async {
    await emit.forEach<List<Transaction>>(
      _repository.transactions(),
      onData: (trans) {
        return LoadTransactionsSuccess(transactions: trans);
      },
    );
  }

  final TransactionRepository _repository;
}
