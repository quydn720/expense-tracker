import 'package:bloc/bloc.dart';
import 'package:expense_tracker/domain/transaction/i_transaction_repository.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart';
import 'package:expense_tracker/domain/transaction/transaction_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_actor_event.dart';
part 'transaction_actor_state.dart';
part 'transaction_actor_bloc.freezed.dart';

@injectable
class TransactionActorBloc
    extends Bloc<TransactionActorEvent, TransactionActorState> {
  final ITransactionRepository _transactionRepository;

  TransactionActorBloc(this._transactionRepository) : super(const _Initial()) {
    on<_Deleted>((event, emit) async {
      emit((const ActionInProgress()));
      final possibleFailure =
          await _transactionRepository.delete(event.transaction);
      emit(possibleFailure.fold(
        (f) => DeleteFailure(f),
        (_) => const DeleteSuccess(),
      ));
    });
  }
}
