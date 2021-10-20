import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'wallet.freezed.dart';

@freezed
class Wallet with _$Wallet {
  const factory Wallet({
    required UniqueId id,
    required IconData iconData,
    required String name,
    required double amount,
  }) = _Wallet;

  factory Wallet.fromUniqueString(String input) {
    return Wallet(
      id: UniqueId.fromUniqueString(const Uuid().v1()),
      name: input,
      amount: 3,
      iconData: Icons.ac_unit,
    );
  }
}
