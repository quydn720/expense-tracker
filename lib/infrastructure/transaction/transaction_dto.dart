import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/category.dart';
import 'package:expense_tracker/domain/transaction/models/value_object.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart' as et;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/wallet_dto.dart';

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
    required Map<String, dynamic> wallet,
    @ServerTimestampConverter() required Timestamp serverTimestamp,
    required int type,
  }) = _TransactionDTO;

  factory TransactionDTO.fromDomain(et.Transaction t) {
    return TransactionDTO(
      id: t.id.getOrCrash(),
      amount: t.amount.getOrCrash(),
      category: t.category.name,
      description: t.description,
      wallet: WalletDTO.fromDomain(t.wallet).toJson(),
      serverTimestamp: Timestamp.fromDate(t.date),
      type: t.type.value,
    );
  }

  et.Transaction toDomain() {
    return et.Transaction(
      id: UniqueId.fromUniqueString(id),
      description: description,
      category: Category(
        color: 30912,
        id: UniqueId(),
        imagePath: '',
        name: category,
      ),
      wallet: WalletDTO.fromJson(wallet).toDomain(),
      amount: TransactionAmount(amount.toString()),
      date: DateTime.fromMillisecondsSinceEpoch(
        serverTimestamp.millisecondsSinceEpoch,
      ),
      type: et.TransactionType(type),
    );
  }

  factory TransactionDTO.fromJson(Map<String, dynamic> json) =>
      _$TransactionDTOFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<Timestamp, Object> {
  const ServerTimestampConverter();

  @override
  Timestamp fromJson(Object json) {
    return json as Timestamp;
  }

  @override
  Object toJson(Timestamp timestamp) => timestamp;
}
