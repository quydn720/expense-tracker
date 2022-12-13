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
  ) : super(const TransactionsLoading()) {
    on<TransactionsSubscriptionRequested>(_onTransactionsSubscriptionRequested);
  }

  Future<void> _onTransactionsSubscriptionRequested(
    TransactionsSubscriptionRequested event,
    Emitter<TransactionState> emit,
  ) async {
    await Future<void>.delayed(const Duration(seconds: 2));
    await emit.forEach<List<TransactionEntity>>(
      _repository.watchTransactions(category: 'Food'),
      onData: (trans) {
        return TransactionsLoaded(transactions: trans);
      },
    );
  }

  final ITransactionRepository _repository;
}
