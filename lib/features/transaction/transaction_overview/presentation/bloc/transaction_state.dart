part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(<TransactionEntity>[]) List<TransactionEntity> transactions,
    @Default(TransactionStatus.initial) TransactionStatus status,
    String? category,
    @Default(TransactionsViewFilter.all) TransactionsViewFilter filter,
    String? sortBy,
  }) = _TransactionState;

  const TransactionState._();

  Iterable<TransactionEntity> get filteredTransactions =>
      filter.applyAll(transactions);
}

enum TransactionStatus { loading, loaded, initial }

enum TransactionsViewFilter { income, expense, all }

extension TransactionsViewFilterX on TransactionsViewFilter {
  bool apply(TransactionEntity transaction) {
    switch (this) {
      case TransactionsViewFilter.income:
        return transaction.category.categoryType == CategoryType.income;
      case TransactionsViewFilter.expense:
        return transaction.category.categoryType == CategoryType.expense;
      case TransactionsViewFilter.all:
        return true;
    }
  }

  Iterable<TransactionEntity> applyAll(
    Iterable<TransactionEntity> transactions,
  ) {
    return transactions.where(apply);
  }
}
