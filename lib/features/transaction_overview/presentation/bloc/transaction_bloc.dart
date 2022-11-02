import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../domain/usecases/load_transactions.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(
    this._addTransaction,
    this._repository,
  ) : super(TransactionsLoading()) {
    on<TransactionsSubscriptionRequested>(_onTransactionsSubscriptionRequested);

    on<AddNewTransaction>((event, emit) async {
      await _addTransaction.call(event.transaction);
    });
  }

  Future<void> _onTransactionsSubscriptionRequested(
    TransactionsSubscriptionRequested event,
    Emitter<TransactionState> emit,
  ) async {
    await emit.forEach<List<Transaction>>(
      _repository.transactions(),
      onData: (trans) => LoadTransactionsSuccess(transactions: trans),
    );
    // }
  }

  final AddTransaction _addTransaction;
  final TransactionRepository _repository;

  @override
  Future<void> close() {
    // print('transaction bloc close');
    return super.close();
  }
}
