// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDTO _$$_TransactionDTOFromJson(Map<String, dynamic> json) =>
    _$_TransactionDTO(
      id: json['id'] as String,
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String?,
      category: json['category'] as String,
      walletId: json['walletId'] as String,
      serverTimestamp: const ServerTimestampConverter()
          .fromJson(json['serverTimestamp'] as Object),
      type: json['type'] as int,
    );

Map<String, dynamic> _$$_TransactionDTOToJson(_$_TransactionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'description': instance.description,
      'category': instance.category,
      'walletId': instance.walletId,
      'serverTimestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
      'type': instance.type,
    };
