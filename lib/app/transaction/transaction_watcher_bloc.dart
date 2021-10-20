import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/transaction/i_transaction_repository.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart';
import 'package:expense_tracker/domain/transaction/transaction_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_watcher_event.dart';
part 'transaction_watcher_state.dart';
part 'transaction_watcher_bloc.freezed.dart';

@injectable
class TransactionWatcherBloc
    extends Bloc<TransactionWatcherEvent, TransactionWatcherState> {
  final ITransactionRepository _transactionRepository;

  late StreamSubscription<Either<TransactionFailure, List<Transaction>>>
      _transactionStreamSubscription;

  TransactionWatcherBloc(this._transactionRepository)
      : super(const _Initial()) {
    on<WatchAll>((event, emit) async {
      emit(const LoadingProgress());
      _transactionStreamSubscription =
          _transactionRepository.watchAll().listen((failureOrTransactions) {
        add(
          TransactionWatcherEvent.transactionsReceived(failureOrTransactions),
        );
      });
    });

    on<TransactionsReceived>((event, emit) {
      emit(event.failureOrTransactions.fold(
        (f) => LoadFailure(f),
        (transactions) => LoadSuccess(transactions),
      ));
    });
  }

  @override
  Future<void> close() {
    _transactionStreamSubscription.cancel();
    return super.close();
  }
}
