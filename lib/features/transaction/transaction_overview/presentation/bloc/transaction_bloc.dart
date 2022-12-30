import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(
    this._repository,
  ) : super(const TransactionState()) {
    on<TransactionsSubscriptionRequested>(_onTransactionsSubscriptionRequested);
  }

  final ITransactionRepository _repository;

  Future<void> _onTransactionsSubscriptionRequested(
    TransactionsSubscriptionRequested event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(status: TransactionStatus.loading));

    await emit.forEach<List<TransactionEntity>>(
      _repository.watchTransactions(),
      onData: (transactions) {
        return state.copyWith(
          transactions: transactions,
          status: TransactionStatus.loaded,
        );
      },
    );
  }
}
