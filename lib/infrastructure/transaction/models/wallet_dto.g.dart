// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletDTO _$$_WalletDTOFromJson(Map<String, dynamic> json) => _$_WalletDTO(
      id: json['id'] as String,
      amount: (json['amount'] as num).toDouble(),
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_WalletDTOToJson(_$_WalletDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'imagePath': instance.imagePath,
      'name': instance.name,
    };
