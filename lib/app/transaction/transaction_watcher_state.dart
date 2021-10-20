part of 'transaction_watcher_bloc.dart';

@freezed
class TransactionWatcherState with _$TransactionWatcherState {
  const factory TransactionWatcherState.initial() = _Initial;
  const factory TransactionWatcherState.loadingProgress() = LoadingProgress;
  const factory TransactionWatcherState.loadSuccess(
      List<Transaction> transactions) = LoadSuccess;
  const factory TransactionWatcherState.loadFailure(
      TransactionFailure failure) = LoadFailure;
}
