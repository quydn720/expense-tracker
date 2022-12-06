import 'package:formz/formz.dart';

class MoneyAmount extends FormzInput<double, MoneyValidationAmountError> {
  const MoneyAmount.pure() : super.pure(0);

  const MoneyAmount.dirty(super.value) : super.dirty();

  @override
  MoneyValidationAmountError? validator(double value) {
    if (value <= 0) {
      return MoneyValidationAmountError.invalid;
    } else {
      return null;
    }
  }
}

enum MoneyValidationAmountError { invalid }
