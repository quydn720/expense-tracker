import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/category.dart';
import 'package:expense_tracker/domain/transaction/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required UniqueId id,
    required Category category,
    required Wallet wallet,
    required double amount,
    required String? description,
  }) = _Transaction;
}
