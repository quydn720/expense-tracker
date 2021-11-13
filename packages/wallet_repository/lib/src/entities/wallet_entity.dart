import 'dart:convert';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class WalletEntity extends Equatable {
  final String id;
  final double amount;
  final String name;
  final String iconPath;
  final Color color;

  const WalletEntity({
    required this.id,
    required this.amount,
    required this.name,
    required this.iconPath,
    required this.color,
  });

  @override
  bool get stringify => true;

  static WalletEntity fromSnapshot(DocumentSnapshot snap) {
    final data = snap.data() as Map<String, dynamic>?;
    if (data == null) throw Exception();
    return WalletEntity(
      id: data['id'],
      amount: data['amount'].toDouble(),
      name: data['name'],
      iconPath: data['iconPath'],
      color: Color(data['color']),
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

  factory WalletEntity.fromMap(Map<String, dynamic> map) {
    return WalletEntity(
      id: map['id'],
      amount: map['amount'],
      name: map['name'],
      iconPath: map['iconPath'],
      color: Color(map['color']),
    );
  }

  String toJson() => json.encode(toMap());

  factory WalletEntity.fromJson(String source) =>
      WalletEntity.fromMap(json.decode(source));
}
