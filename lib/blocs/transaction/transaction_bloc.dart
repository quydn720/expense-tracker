import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:transaction_repository/transaction_repository.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(this.transactionRepository)
      : super(const TransactionLoading()) {
    on<LoadTransactions>(_onLoadTransactions);
    on<TransactionUpdated>(_onTransactionUpdated);
    on<AddTransactions>(_onAddTransaction);
    on<UpdateTransactions>(_onUpdateTransaction);
    on<DeleteTransactions>(_onDeleteTransaction);
  }
  final TransactionRepository transactionRepository;
  Future<void> _onLoadTransactions(
      LoadTransactions event, Emitter<TransactionState> emit) {
    return emit.onEach<List<Transaction>>(
      transactionRepository.transactions(),
      onData: (trans) => add(
        (TransactionEvent.transactionUpdated(trans)),
      ),
    );
  }

  void _onTransactionUpdated(
      TransactionUpdated event, Emitter<TransactionState> emit) {
    emit(TransactionLoaded(event.transactions));
  }

  void _onAddTransaction(
      AddTransactions event, Emitter<TransactionState> emit) {
    transactionRepository.addNewTransaction(event.transaction);
  }

  void _onUpdateTransaction(
      UpdateTransactions event, Emitter<TransactionState> emit) {
    transactionRepository.updateTransaction(event.updatedTransaction);
  }

  void _onDeleteTransaction(
      DeleteTransactions event, Emitter<TransactionState> emit) {
    transactionRepository.deleteTransaction(event.transaction);
  }
}
