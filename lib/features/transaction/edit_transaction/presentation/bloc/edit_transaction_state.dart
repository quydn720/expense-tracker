part of 'edit_transaction_bloc.dart';

@freezed
class EditTransactionState with _$EditTransactionState {
  const factory EditTransactionState({
    @Default(AmountText.pure()) AmountText amount,
    @Default(CategoryField.pure()) CategoryField category,
    @Default(false) bool isRepeated,
    @Default(true) bool isNewTransaction,
    @Default(Status.initital) Status status,
    @Default('') String description,
    required DateTime date,
    XFile? imgFile,
    @Default(FormzStatus.pure) FormzStatus formzStatus,
  }) = _EditTransactionState;
}

class AmountText extends FormzInput<double, AmountTextError> {
  const AmountText.pure([super.value = 0]) : super.pure();
  const AmountText.dirty([super.value = 0]) : super.dirty();
  @override
  AmountTextError? validator(double value) {
    if (value == 0) return AmountTextError.empty;
    return null;
  }
}

class CategoryField extends FormzInput<CategoryEntity?, CategoryTextError> {
  const CategoryField.pure([super.value]) : super.pure();
  const CategoryField.dirty([super.value]) : super.dirty();
  @override
  CategoryTextError? validator(CategoryEntity? value) {
    if (value == null) return CategoryTextError.empty;
    return null;
  }
}

enum AmountTextError { empty, negative }

extension AmountTextErrorIntl on AmountTextError? {
  String? toLocalizedString(AppLocalizations l10n) {
    if (this == AmountTextError.empty) return l10n.authError_invalidEmail;
    if (this == AmountTextError.negative) return l10n.authError_userNotFound;
    return null;
  }
}

enum CategoryTextError { empty, negative }

extension CategoryTextErrorIntl on CategoryTextError? {
  String? toLocalizedString(AppLocalizations l10n) {
    if (this == CategoryTextError.empty) return l10n.authError_invalidEmail;
    if (this == CategoryTextError.negative) return l10n.authError_userNotFound;
    return null;
  }
}
