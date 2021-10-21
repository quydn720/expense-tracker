import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/core/failures.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/core/value_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'wallet.freezed.dart';

@freezed
class Wallet with _$Wallet {
  const Wallet._();
  const factory Wallet({
    required UniqueId id,
    required String imagePath,
    required WalletName name,
    required double amount,
  }) = _Wallet;

  factory Wallet.empty() {
    return Wallet(
      id: UniqueId.fromUniqueString(const Uuid().v1()),
      name: WalletName('testing wallet'),
      amount: 0,
      imagePath: 'assets/icons/wallet-3.png',
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((l) => some(l), (_) => none());
  }
}

class WalletName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 1000;
  factory WalletName(String input) {
    return WalletName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }
  const WalletName._(this.value);
}
