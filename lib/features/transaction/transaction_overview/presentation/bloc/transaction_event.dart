part of 'transaction_bloc.dart';

abstract class TransactionEvent extends Equatable {
  const TransactionEvent();

  @override
  List<Object> get props => [];
}

class TransactionsSubscriptionRequested extends TransactionEvent {
  const TransactionsSubscriptionRequested();
}

class Loaded extends TransactionEvent {
  const Loaded(this.transactions);
  final List<TransactionEntity> transactions;
}

class TransactionsViewFilterChanged extends TransactionEvent {
  const TransactionsViewFilterChanged(this.filter);
  final TransactionsViewFilter filter;

  @override
  List<Object> get props => [filter];
}

class TransactionsViewCategoryFilterChanged extends TransactionEvent {
  const TransactionsViewCategoryFilterChanged(this.filter);
  final TransactionsViewFilter filter;

  @override
  List<Object> get props => [filter];
}
