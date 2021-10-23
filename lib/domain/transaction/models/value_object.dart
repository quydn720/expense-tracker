import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/core/failures.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/core/value_validator.dart';

class WalletName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 100;

  factory WalletName(String input) {
    return WalletName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }
  const WalletName._(this.value);
}

class MoneyAmount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  factory MoneyAmount(String input) {
    return MoneyAmount._(validateAmountIsValidNumber(input));
  }
  const MoneyAmount._(this.value);
}
