part of 'transaction_bloc.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionsInitial extends TransactionState {}

class TransactionsLoading extends TransactionState {}

class LoadTransactionsFailure extends TransactionState {}

class LoadTransactionsSuccess extends TransactionState {
  const LoadTransactionsSuccess({required this.transactions});
  final List<Transaction> transactions;
  @override
  List<Object> get props {
    return [transactions, transactions.hashCode];
  }
}
