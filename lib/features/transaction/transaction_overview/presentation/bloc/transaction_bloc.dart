import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(
    this._repository,
    this._deleteTransactionUseCase,
  ) : super(const TransactionState()) {
    on<TransactionsSubscriptionRequested>(_onTransactionsSubscriptionRequested);
    on<TransactionsViewFilterChanged>(_onTransactionViewFilterChanged);
    on<TransactionOverviewTransactionDeleted>(_onTransactionDeleted);
  }

  Future<void> _onTransactionViewFilterChanged(
    TransactionsViewFilterChanged event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(filter: event.filter));
  }

  final ITransactionRepository _repository;
  final DeleteTransactionUseCase _deleteTransactionUseCase;

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

  Future<void> _onTransactionDeleted(
    TransactionOverviewTransactionDeleted event,
    Emitter<TransactionState> emit,
  ) async {
    emit(state.copyWith(lastDeletedTransaction: event.transaction));
    await _deleteTransactionUseCase(event.transaction.id);
  }
}
