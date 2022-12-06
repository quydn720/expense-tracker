part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = TransactionsInitial;
  const factory TransactionState.loading() = TransactionsLoading;
  const factory TransactionState.failure() = TransactionsFailure;
  const factory TransactionState.loaded({
    required List<Transaction> transactions,
  }) = TransactionsLoaded;
}

extension TransactionsLoadedX on TransactionsLoaded {
  double get total {
    try {
      return transactions.map((e) => e.amount).reduce((a, b) => a + b);
    } catch (e) {
      return 0;
    }
  }
}
