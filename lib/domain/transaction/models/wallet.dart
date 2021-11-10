import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/core/failures.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet.freezed.dart';

@freezed
class Wallet with _$Wallet {
  const Wallet._();
  const factory Wallet({
    required UniqueId id,

    /// Can't be empty, cause user choose from avaiable image
    required String imagePath,

    /// User input - must be validated
    required WalletName name,
    required WalletAmount amount, //
  }) = _Wallet;

  factory Wallet.empty() {
    return Wallet(
      // id: UniqueId(),
      id: UniqueId.fromUniqueString('lR5yru6KmetG2o50kQD6'),
      name: WalletName('testing wallet'),
      amount: WalletAmount('-1'),
      imagePath: 'assets/icons/wallet-3.png',
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(amount.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
