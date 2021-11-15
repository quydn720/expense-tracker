import 'dart:ui';

import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

import 'package:wallet_repository/src/entities/entities.dart';

@immutable
class Wallet {
  final String id;
  final double amount;
  final String name;
  final String iconPath;
  final Color color;

  Wallet({
    String? id,
    required this.name,
    required this.iconPath,
    required this.color,
    required this.amount,
  }) : id = id ?? const Uuid().v4();

  WalletEntity toEntity() {
    return WalletEntity(
      id: id.trim(),
      amount: amount,
      name: name,
      iconPath: iconPath,
      color: color,
    );
  }

  factory Wallet.fromEntity(WalletEntity entity) {
    return Wallet(
      id: entity.id.trim(),
      amount: entity.amount,
      color: entity.color,
      iconPath: entity.iconPath,
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
        other.name == name &&
        other.iconPath == iconPath &&
        other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        amount.hashCode ^
        name.hashCode ^
        iconPath.hashCode ^
        color.hashCode;
  }
}
