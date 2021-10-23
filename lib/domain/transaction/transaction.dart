import 'package:dartz/dartz.dart';
import 'package:expense_tracker/domain/core/failures.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'models/category.dart';
import 'models/wallet.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required UniqueId id,
    required Category category,
    required Wallet wallet,
    required MoneyAmount amount,
    required String? description,
    required DateTime date,
    required TransactionType type,
  }) = _Transaction;

  factory Transaction.empty() {
    return Transaction(
      id: UniqueId.fromUniqueString(const Uuid().v1()),
      amount: MoneyAmount('0'),
      category: Category.empty(),
      date: DateTime.now(),
      description: '',
      type: TransactionType.empty,
      wallet: Wallet.empty(),
    );
  }
}

enum TransactionType { empty, expense, income, transfer }

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
