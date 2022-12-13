part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(<TransactionEntity>[]) List<TransactionEntity> transactions,
    @Default(TransactionStatus.initial) TransactionStatus status,
    String? category,
    String? type,
    String? sortBy,
  }) = _TransactionState;
}

enum TransactionStatus { loading, loaded, initial }
