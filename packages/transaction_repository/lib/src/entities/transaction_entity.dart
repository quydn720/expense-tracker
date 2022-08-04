import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

import 'package:transaction_repository/src/models/models.dart';

class TransactionEntity extends Equatable {
  const TransactionEntity({
    required this.walletId,
    required this.id,
    required this.amount,
    required this.category,
    required this.type,
    required this.timestamp,
    this.description,
  });

  factory TransactionEntity.fromMap(Map<String, dynamic> map) {
    return TransactionEntity(
      id: map['id'] as String,
      amount: map['amount'] as double,
      category: map['category'] as String,
      walletId: map['walletId'] as String,
      description: map['description'] as String,
      type: TransactionType.values[map['type'] as int],
      timestamp: map['timestamp'] as Timestamp,
    );
  }

  factory TransactionEntity.fromJson(String source) =>
      TransactionEntity.fromMap(json.decode(source) as Map<String, dynamic>);
  final String id;
  final double amount;
  final String category;
  final String? description;
  final TransactionType type;
  final Timestamp timestamp;
  final String walletId;

  @override
  List<Object?> get props {
    return [
      id,
      amount,
      category,
      description,
      type,
      timestamp,
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'category': category,
      'description': description,
      'type': type.index,
      'walletId': walletId,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  static TransactionEntity fromSnapshot(DocumentSnapshot snap) {
    final data = snap.data() as Map<String, dynamic>?;
    if (data == null) throw Exception();
    return TransactionEntity(
      id: data['id'] as String,
      timestamp: data['timestamp'] as Timestamp,
      amount: data['amount'] as double,
      category: data['category'] as String,
      type: TransactionType.values[data['type'] as int],
      walletId: data['walletId'] as String,
      description: data['description'] as String,
    );
  }

  Map<String, Object?> toDocument() {
    return {
      'id': id,
      'amount': amount,
      'category': category,
      'type': type.index,
      'description': description,
      'timestamp': timestamp,
      'walletId': walletId,
    };
  }
}
