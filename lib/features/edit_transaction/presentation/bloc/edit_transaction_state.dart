part of 'edit_transaction_bloc.dart';

@freezed
class EditTransactionState with _$EditTransactionState {
  const factory EditTransactionState({
    @Default(false) bool isRepeated,
    @Default(false) bool isNewTransaction,
    @Default(Status.initital) Status status,
    @Default(0) double amount,
    @Default('') String description,
    Category? category,
    XFile? imgFile,
  }) = _EditTransactionState;
}
