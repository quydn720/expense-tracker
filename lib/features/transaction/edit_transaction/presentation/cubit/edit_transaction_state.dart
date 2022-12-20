part of 'edit_transaction_cubit.dart';

@freezed
class EditTransactionState with _$EditTransactionState {
  const factory EditTransactionState({
    @Default(AmountText.pure()) AmountText amount,
    @Default(CategoryField.pure()) CategoryField category,
    @Default('') String description,
    @Default(WalletField.pure()) WalletField wallet,
    required DateTime date,
    @Default(false) bool showMediaBottomSheet,
    XFile? imgFile,
    @Default(FormzStatus.pure) FormzStatus formzStatus,
    @Default(false) bool isRepeated,
    @Default(true) bool isNewTransaction,
  }) = _EditTransactionState;

  const EditTransactionState._();

  double get amountDouble {
    return double.tryParse(amount.value) ?? 0;
  }
}

enum AmountTextError { empty, negative, invalid }

class AmountText extends FormzInput<String, AmountTextError> {
  const AmountText.pure([super.value = '']) : super.pure();
  const AmountText.dirty([super.value = '']) : super.dirty();
  @override
  AmountTextError? validator(String value) {
    final haveInvalidCharacters = !RegExp(r'^[0-9+.]*$').hasMatch(value);
    final haveTooManyDots = value.split('.').length > 2;

    if (haveInvalidCharacters || haveTooManyDots) {
      return AmountTextError.invalid;
    }

    final amount = double.tryParse(value) ?? 0;

    if (amount == 0) return AmountTextError.empty;
    if (amount < 0) return AmountTextError.negative;
    return null;
  }
}

enum CategoryTextError { empty, negative }

class CategoryField extends FormzInput<CategoryEntity?, CategoryTextError> {
  const CategoryField.pure([super.value]) : super.pure();
  const CategoryField.dirty([super.value]) : super.dirty();
  @override
  CategoryTextError? validator(CategoryEntity? value) {
    if (value == null) return CategoryTextError.empty;
    return null;
  }
}

enum WalletTextError { empty, negative }

class WalletField extends FormzInput<Wallet?, WalletTextError> {
  const WalletField.pure([super.value]) : super.pure();
  const WalletField.dirty([super.value]) : super.dirty();
  @override
  WalletTextError? validator(Wallet? value) {
    if (value == null) return WalletTextError.empty;
    return null;
  }
}

extension AmountTextErrorIntl on AmountTextError? {
  String? toLocalizedString(AppLocalizations l10n) {
    switch (this) {
      case AmountTextError.invalid:
        return l10n.amount_field_validation_invalidAmount;
      case AmountTextError.empty:
      case AmountTextError.negative:
        return l10n.amount_field_validation_emptyOrNegativeAmount;
      case null:
        return null;
    }
  }
}

extension CategoryTextErrorIntl on CategoryTextError? {
  String? toLocalizedString(AppLocalizations l10n) {
    if (this == CategoryTextError.empty) return l10n.authError_invalidEmail;
    if (this == CategoryTextError.negative) return l10n.authError_userNotFound;
    return null;
  }
}
