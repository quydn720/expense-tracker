import 'package:formz/formz.dart';

class MoneyAmount extends FormzInput<double, MoneyValidationAmountError> {
  const MoneyAmount.pure() : super.pure(0);

  const MoneyAmount.dirty(double value) : super.dirty(value);

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
