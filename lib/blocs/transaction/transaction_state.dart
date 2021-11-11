part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.transactionSuccess(
      List<Transaction> transactions) = TransactionLoaded;
  const factory TransactionState.transactionLoading() = TransactionLoading;
  const factory TransactionState.transactionError() = TransactionError;
}
