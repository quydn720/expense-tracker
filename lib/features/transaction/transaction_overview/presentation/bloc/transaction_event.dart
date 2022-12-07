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
