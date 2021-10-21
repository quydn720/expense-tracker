import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/category.dart';
import 'package:expense_tracker/domain/transaction/models/wallet.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart' as et;
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
    @ServerTimestampConverter() required Timestamp serverTimestamp,
  }) = _TransactionDTO;

  factory TransactionDTO.fromDomain(et.Transaction t) {
    return TransactionDTO(
      id: t.id.getOrCrash(),
      amount: t.amount,
      category: t.category.name,
      description: t.description,
      wallet: t.wallet.name.getOrCrash(),
      serverTimestamp: Timestamp.fromDate(t.date),
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
      wallet: Wallet.empty(),
      amount: amount,
      date: DateTime.fromMillisecondsSinceEpoch(
        serverTimestamp.millisecondsSinceEpoch,
      ),
      type: et.TransactionType.expense,
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
