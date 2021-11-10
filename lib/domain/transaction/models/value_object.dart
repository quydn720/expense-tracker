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

class TransactionAmount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  factory TransactionAmount(String input) {
    return TransactionAmount._(validateAmountIsValidNumber(input));
  }
  const TransactionAmount._(this.value);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TransactionAmount && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class WalletAmount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  factory WalletAmount(String input) {
    return WalletAmount._(validateAmountIsValidMoney(input));
  }
  const WalletAmount._(this.value);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WalletAmount && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
