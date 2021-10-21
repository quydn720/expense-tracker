part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormEvent with _$TransactionFormEvent {
  const factory TransactionFormEvent.initialized() = Initialized;
  const factory TransactionFormEvent.categoryChanged(Category category) =
      CategoryChanged;
  const factory TransactionFormEvent.descriptionChanged(String description) =
      DescriptionChanged;
  const factory TransactionFormEvent.walletChanged(Wallet wallet) =
      WalletChanged;
  const factory TransactionFormEvent.amountChanged(double amount) =
      AmountChanged;
  const factory TransactionFormEvent.commitPressed() = CommitPressed;

  // TODO: The add attachment / repeat transaction will do later on
}
