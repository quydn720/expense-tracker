part of 'transaction_watcher_bloc.dart';

@freezed
class TransactionWatcherEvent with _$TransactionWatcherEvent {
  const factory TransactionWatcherEvent.started() = _Started;
  const factory TransactionWatcherEvent.watchAll() = WatchAll;
  const factory TransactionWatcherEvent.transactionsReceived(
          Either<TransactionFailure, List<Transaction>> failureOrTransactions) =
      TransactionsReceived;
}
