import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

import 'package:transaction_repository/src/models/models.dart';

class TransactionEntity extends Equatable {
  final String id;
  final double amount;
  final String category;
  final String? description;
  final TransactionType type;
  final Timestamp timestamp;
  final String walletId;

  const TransactionEntity({
    required this.walletId,
    required this.id,
    required this.amount,
    required this.category,
    required this.type,
    required this.timestamp,
    this.description,
  });

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

  factory TransactionEntity.fromMap(Map<String, dynamic> map) {
    return TransactionEntity(
      id: map['id'] as String,
      amount: map['amount'] as double,
      category: map['category'] as String,
      walletId: map['walletId'],
      description: map['description'] as String,
      type: TransactionType.values[map['type']],
      timestamp: map['timestamp'] as Timestamp,
    );
  }

  String toJson() => json.encode(toMap());

  factory TransactionEntity.fromJson(String source) =>
      TransactionEntity.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  static TransactionEntity fromSnapshot(DocumentSnapshot snap) {
    final data = snap.data() as Map<String, dynamic>?;
    if (data == null) throw Exception();
    return TransactionEntity(
      id: data['id'],
      timestamp: data['timestamp'],
      amount: data['amount'].toDouble(),
      category: data['category'],
      type: TransactionType.values[data['type']],
      walletId: data['walletId'],
      description: data['description'],
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
