part of 'transaction_actor_bloc.dart';

@freezed
class TransactionActorState with _$TransactionActorState {
  const factory TransactionActorState.initial() = _Initial;
  const factory TransactionActorState.actionInProgress() = ActionInProgress;
  const factory TransactionActorState.deleteFailure(
      TransactionFailure transactionFailure) = DeleteFailure;
  const factory TransactionActorState.deleteSuccess() = DeleteSuccess;
}
