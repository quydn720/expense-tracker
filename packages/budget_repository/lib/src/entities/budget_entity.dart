import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class BudgetEntity extends Equatable {
  final String id;
  final double amount;
  final String category;
  final int monthApply;
  final double? exceedLimit;

  const BudgetEntity({
    this.exceedLimit,
    required this.id,
    required this.amount,
    required this.category,
    required this.monthApply,
  });

  static BudgetEntity fromSnapshot(DocumentSnapshot snap) {
    final data = snap.data() as Map<String, dynamic>?;
    if (data == null) throw Exception();
    return BudgetEntity(
      id: data['id'],
      amount: data['amount'].toDouble(),
      category: data['category'],
      monthApply: data['monthApply'],
      exceedLimit: data['exceedLimit']?.toDouble(),
    );
  }

  Map<String, Object?> toDocument() {
    return {
      'id': id,
      'amount': amount,
      'category': category,
      'monthApply': monthApply,
    };
  }

  @override
  List<Object?> get props => [id, amount, category, monthApply, exceedLimit];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'category': category,
      'monthApply': monthApply,
      'exceedLimit': exceedLimit,
    };
  }

  factory BudgetEntity.fromMap(Map<String, dynamic> map) {
    return BudgetEntity(
      id: map['id'] ?? '',
      amount: map['amount']?.toDouble() ?? 0.0,
      category: map['category'] ?? '',
      monthApply: map['monthApply']?.toInt() ?? 0,
      exceedLimit: map['exceedLimit']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory BudgetEntity.fromJson(String source) =>
      BudgetEntity.fromMap(json.decode(source));
}

enum TransactionType { expense, income }
