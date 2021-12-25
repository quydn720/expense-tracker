import 'dart:ui';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

import 'package:wallet_repository/src/entities/entities.dart';

enum WalletValidatorError { invalid }

@immutable
class Wallet extends FormzInput<String, WalletValidatorError> {
  final String id;
  final double amount;
  final String name;
  final String iconPath;
  final Color color;

  const Wallet.pure(this.id, this.amount, this.name, this.iconPath, this.color)
      : super.pure('');

  const Wallet.dirty(
    this.id,
    this.amount,
    this.name,
    this.iconPath,
    this.color,
  ) : super.pure(id);

  Wallet({
    String? id,
    required this.name,
    required this.iconPath,
    required this.color,
    required this.amount,
  })  : id = id ?? const Uuid().v4(),
        super.dirty(name);

  WalletEntity toEntity() {
    return WalletEntity(
      id: id.trim(),
      amount: amount,
      name: name,
      iconPath: iconPath.trim(),
      color: color,
    );
  }

  factory Wallet.fromEntity(WalletEntity entity) {
    return Wallet(
      id: entity.id.trim(),
      amount: entity.amount,
      color: entity.color,
      iconPath: entity.iconPath.trim(),
      name: entity.name,
    );
  }

  bool get stringify => true;

  Wallet copyWith({
    String? id,
    double? amount,
    String? name,
    String? iconPath,
    Color? color,
  }) {
    return Wallet(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      name: name ?? this.name,
      iconPath: iconPath ?? this.iconPath,
      color: color ?? this.color,
    );
  }

  @override
  String toString() {
    return 'Wallet(id: $id, amount: $amount, name: $name, iconPath: $iconPath, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Wallet &&
        other.id == id &&
        other.amount == amount &&
        other.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        amount.hashCode ^
        name.hashCode ^
        iconPath.hashCode ^
        color.hashCode;
  }

  @override
  WalletValidatorError? validator(String? value) {
    if (value!.isEmpty) {
      return WalletValidatorError.invalid;
    } else {
      return null;
    }
  }
}
