part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.loadTransactions() = LoadTransactions;
  const factory TransactionEvent.addTransaction(Transaction transaction) =
      AddTransactions;
  const factory TransactionEvent.deleteTransaction(Transaction transaction) =
      DeleteTransactions;
  const factory TransactionEvent.updateTransaction(
    Transaction updatedTransaction,
  ) = UpdateTransactions;
  const factory TransactionEvent.transactionUpdated(
    List<Transaction> transactions,
  ) = TransactionUpdated;
}
