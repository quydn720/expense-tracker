import 'package:meta/meta.dart';
import 'package:transaction_repository/src/entities/entities.dart';
import 'package:uuid/uuid.dart';

@immutable
class Transaction {
  final String id;
  final double amount;
  final String category;
  final String wallet;
  final String description;
  final TransactionType type;

  Transaction({
    String? id,
    String? description,
    required this.amount,
    required this.category,
    required this.wallet,
    required this.type,
  })  : id = id ?? const Uuid().v4(),
        description = description ?? '';

  TransactionEntity toEntity() {
    return TransactionEntity(
      id: id,
      amount: amount,
      category: category,
      wallet: wallet,
      type: type,
    );
  }

  factory Transaction.fromEntity(TransactionEntity entity) {
    return Transaction(
      description: entity.description,
      id: entity.id,
      amount: entity.amount,
      category: entity.category,
      wallet: entity.wallet,
      type: entity.type,
    );
  }

  Transaction copyWith({
    String? id,
    double? amount,
    String? category,
    String? wallet,
    String? description,
    TransactionType? type,
  }) {
    return Transaction(
      id: id ?? this.id,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      wallet: wallet ?? this.wallet,
      type: type ?? this.type,
    );
  }

  bool get stringify => true;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Transaction &&
        other.id == id &&
        other.amount == amount &&
        other.category == category &&
        other.wallet == wallet &&
        other.description == description &&
        other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        amount.hashCode ^
        category.hashCode ^
        wallet.hashCode ^
        description.hashCode ^
        type.hashCode;
  }
}

enum TransactionType { expense, income, transfer }
