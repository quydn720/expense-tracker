import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'package:expense_tracker/domain/core/failures.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/value_object.dart';

import 'models/category.dart';
import 'models/wallet.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required UniqueId id,
    required Category category,
    required Wallet wallet,
    required TransactionAmount amount,
    required String? description,
    required DateTime date,
    required TransactionType type,
  }) = _Transaction;

  factory Transaction.empty() {
    return Transaction(
      id: UniqueId(),
      amount: TransactionAmount('0'),
      category: Category.empty(),
      date: DateTime.now(),
      description: '',
      type: TransactionType(-1),
      wallet: Wallet.empty(),
    );
  }
}

class TransactionType {
  final int value;
  const TransactionType._(this.value);

  factory TransactionType(int input) {
    return TransactionType._(input);
  }

  static TransactionType expense = TransactionType(-1);
  static TransactionType income = TransactionType(1);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TransactionType && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'TransactionType(value: $value)';
}

extension TransactionX on Transaction {
  Option<ValueFailure<dynamic>> get failureOption {
    return amount.failureOrUnit.fold((f) => some(f), (_) => none());
    // category.fail
    //     .andThen(color.failureOrUnit)
    //     .andThen(todos.failureOrUnit)
    //     .andThen(
    //       todos
    //           .getOrCrash()
    //           .map((todoItem) => todoItem.failureOption)
    //           .filter((o) => o.isSome())
    //           .getOrElse(0, (_) => none())
    //           .fold(() => right(unit), (f) => left(f)),
    //     )
    //     .fold((f) => some(f), (_) => none());
  }
}
