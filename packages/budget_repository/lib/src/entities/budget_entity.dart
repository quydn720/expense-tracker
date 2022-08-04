import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class BudgetEntity extends Equatable {
  const BudgetEntity({
    this.exceedLimit,
    required this.id,
    required this.amount,
    required this.category,
    required this.monthApply,
  });

  factory BudgetEntity.fromMap(Map<String, dynamic> map) {
    return BudgetEntity(
      id: map['id'] as String,
      amount: map['amount'] as double,
      category: map['category'] as String,
      monthApply: map['monthApply'] as int,
      exceedLimit: map['exceedLimit'] as double,
    );
  }

  factory BudgetEntity.fromJson(String source) =>
      BudgetEntity.fromMap(json.decode(source) as Map<String, dynamic>);
  final String id;
  final double amount;
  final String category;
  final int monthApply;
  final double? exceedLimit;

  static BudgetEntity fromSnapshot(DocumentSnapshot snap) {
    final data = snap.data() as Map<String, dynamic>?;
    if (data == null) throw Exception();
    return BudgetEntity(
      id: data['id'] as String,
      amount: data['amount'] as double,
      category: data['category'] as String,
      monthApply: data['monthApply'] as int,
      exceedLimit: data['exceedLimit'] as double,
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

  String toJson() => json.encode(toMap());
}

enum TransactionType { expense, income }
