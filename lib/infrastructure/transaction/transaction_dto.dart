import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/category.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart';
import 'package:expense_tracker/domain/transaction/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_dto.freezed.dart';
part 'transaction_dto.g.dart';

@freezed
class TransactionDTO with _$TransactionDTO {
  const TransactionDTO._();

  const factory TransactionDTO({
    required String id,
    required String category,
    required double amount,
    required String? description,
    required String wallet,
  }) = _TransactionDTO;

  factory TransactionDTO.fromDomain(Transaction t) {
    return TransactionDTO(
      id: t.id.getOrCrash(),
      amount: t.amount,
      category: t.category.name,
      description: t.description,
      wallet: t.wallet.name,
    );
  }

  Transaction toDomain() {
    return Transaction(
      id: UniqueId.fromUniqueString(id),
      description: description,
      category: Category.fromUniqueString(category),
      wallet: Wallet.fromUniqueString(wallet),
      amount: amount,
    );
  }

  factory TransactionDTO.fromJson(Map<String, dynamic> json) =>
      _$TransactionDTOFromJson(json);
}
