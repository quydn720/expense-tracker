part of 'transaction_actor_bloc.dart';

@freezed
class TransactionActorEvent with _$TransactionActorEvent {
  const factory TransactionActorEvent.started() = _Started;
  const factory TransactionActorEvent.deleted(Transaction transaction) =
      _Deleted;
}
