import 'dart:convert';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class WalletEntity extends Equatable {

  const WalletEntity({
    required this.id,
    required this.amount,
    required this.name,
    required this.iconPath,
    required this.color,
  });

  factory WalletEntity.fromMap(Map<String, dynamic> map) {
    return WalletEntity(
      id: map['id'] as String,
      amount: map['amount'] as double,
      name: map['name'] as String,
      iconPath: map['iconPath'] as String,
      color: Color(map['color'] as int),
    );
  }

  factory WalletEntity.fromJson(String source) =>
      WalletEntity.fromMap(json.decode(source) as Map<String, dynamic>);
  final String id;
  final double amount;
  final String name;
  final String iconPath;
  final Color color;

  @override
  bool get stringify => true;

  static WalletEntity fromSnapshot(DocumentSnapshot snap) {
    final data = snap.data() as Map<String, dynamic>?;
    if (data == null) throw Exception();
    return WalletEntity(
      id: data['id'] as String,
      amount: data['amount'] as double,
      name: data['name'] as String,
      iconPath: data['iconPath'] as String,
      color: Color(data['color'] as int),
    );
  }

  Map<String, Object?> toDocument() {
    return {
      'id': id,
      'amount': amount,
      'name': name,
      'iconPath': iconPath,
      'color': color.value,
    };
  }

  @override
  List<Object> get props {
    return [
      id,
      amount,
      name,
      iconPath,
      color,
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'name': name,
      'iconPath': iconPath,
      'color': color.value,
    };
  }

  String toJson() => json.encode(toMap());
}
