import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet.freezed.dart';

@freezed
class Wallet with _$Wallet {
  const factory Wallet({
    required String id,
    required double balance,
    required String name,
    required String iconPath,
  }) = _Wallet;
}
