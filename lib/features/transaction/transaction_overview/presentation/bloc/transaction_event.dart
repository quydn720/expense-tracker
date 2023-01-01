part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.loaded(List<TransactionEntity> transactions) =
      Loaded;
  const factory TransactionEvent.transactionsSubscriptionRequested() =
      TransactionsSubscriptionRequested;
  const factory TransactionEvent.transactionsViewFilterChanged(
    TransactionsViewFilter filter,
  ) = TransactionsViewFilterChanged;
  const factory TransactionEvent.transactionOverviewTransactionDeleted(
    TransactionEntity transaction,
  ) = TransactionOverviewTransactionDeleted;
  const factory TransactionEvent.transactionOverviewUndoDeletionRequested() =
      TransactionOverviewUndoDeletionRequested;
}
