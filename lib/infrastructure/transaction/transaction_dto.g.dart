// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDTO _$$_TransactionDTOFromJson(Map<String, dynamic> json) =>
    _$_TransactionDTO(
      id: json['id'] as String,
      category: json['category'] as String,
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String?,
      wallet: json['wallet'] as Map<String, dynamic>,
      serverTimestamp: const ServerTimestampConverter()
          .fromJson(json['serverTimestamp'] as Object),
    );

Map<String, dynamic> _$$_TransactionDTOToJson(_$_TransactionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'amount': instance.amount,
      'description': instance.description,
      'wallet': instance.wallet,
      'serverTimestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };
