part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormState with _$TransactionFormState {
  const factory TransactionFormState({
    required Transaction transaction,
    required Wallet? wallet,
    required Category? category,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<TransactionFailure, Unit>>
        saveFailureOrSuccessOption,
  }) = _TransactionFormState;

  factory TransactionFormState.initial() => TransactionFormState(
        transaction: Transaction.empty(),
        wallet: null,
        category: null,
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
