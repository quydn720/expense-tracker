// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDTO _$TransactionDTOFromJson(Map<String, dynamic> json) {
  return _TransactionDTO.fromJson(json);
}

/// @nodoc
class _$TransactionDTOTearOff {
  const _$TransactionDTOTearOff();

  _TransactionDTO call(
      {required String id,
      required String category,
      required double amount,
      required String? description,
      required String walletId,
      @ServerTimestampConverter() required Timestamp serverTimestamp,
      required int type}) {
    return _TransactionDTO(
      id: id,
      category: category,
      amount: amount,
      description: description,
      walletId: walletId,
      serverTimestamp: serverTimestamp,
      type: type,
    );
  }

  TransactionDTO fromJson(Map<String, Object?> json) {
    return TransactionDTO.fromJson(json);
  }
}

/// @nodoc
const $TransactionDTO = _$TransactionDTOTearOff();

/// @nodoc
mixin _$TransactionDTO {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get walletId => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  Timestamp get serverTimestamp => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDTOCopyWith<TransactionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDTOCopyWith<$Res> {
  factory $TransactionDTOCopyWith(
          TransactionDTO value, $Res Function(TransactionDTO) then) =
      _$TransactionDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String category,
      double amount,
      String? description,
      String walletId,
      @ServerTimestampConverter() Timestamp serverTimestamp,
      int type});
}

/// @nodoc
class _$TransactionDTOCopyWithImpl<$Res>
    implements $TransactionDTOCopyWith<$Res> {
  _$TransactionDTOCopyWithImpl(this._value, this._then);

  final TransactionDTO _value;
  // ignore: unused_field
  final $Res Function(TransactionDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? amount = freezed,
    Object? description = freezed,
    Object? walletId = freezed,
    Object? serverTimestamp = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TransactionDTOCopyWith<$Res>
    implements $TransactionDTOCopyWith<$Res> {
  factory _$TransactionDTOCopyWith(
          _TransactionDTO value, $Res Function(_TransactionDTO) then) =
      __$TransactionDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String category,
      double amount,
      String? description,
      String walletId,
      @ServerTimestampConverter() Timestamp serverTimestamp,
      int type});
}

/// @nodoc
class __$TransactionDTOCopyWithImpl<$Res>
    extends _$TransactionDTOCopyWithImpl<$Res>
    implements _$TransactionDTOCopyWith<$Res> {
  __$TransactionDTOCopyWithImpl(
      _TransactionDTO _value, $Res Function(_TransactionDTO) _then)
      : super(_value, (v) => _then(v as _TransactionDTO));

  @override
  _TransactionDTO get _value => super._value as _TransactionDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? amount = freezed,
    Object? description = freezed,
    Object? walletId = freezed,
    Object? serverTimestamp = freezed,
    Object? type = freezed,
  }) {
    return _then(_TransactionDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDTO extends _TransactionDTO {
  const _$_TransactionDTO(
      {required this.id,
      required this.category,
      required this.amount,
      required this.description,
      required this.walletId,
      @ServerTimestampConverter() required this.serverTimestamp,
      required this.type})
      : super._();

  factory _$_TransactionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDTOFromJson(json);

  @override
  final String id;
  @override
  final String category;
  @override
  final double amount;
  @override
  final String? description;
  @override
  final String walletId;
  @override
  @ServerTimestampConverter()
  final Timestamp serverTimestamp;
  @override
  final int type;

  @override
  String toString() {
    return 'TransactionDTO(id: $id, category: $category, amount: $amount, description: $description, walletId: $walletId, serverTimestamp: $serverTimestamp, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.serverTimestamp, serverTimestamp) ||
                other.serverTimestamp == serverTimestamp) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, category, amount,
      description, walletId, serverTimestamp, type);

  @JsonKey(ignore: true)
  @override
  _$TransactionDTOCopyWith<_TransactionDTO> get copyWith =>
      __$TransactionDTOCopyWithImpl<_TransactionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDTOToJson(this);
  }
}

abstract class _TransactionDTO extends TransactionDTO {
  const factory _TransactionDTO(
      {required String id,
      required String category,
      required double amount,
      required String? description,
      required String walletId,
      @ServerTimestampConverter() required Timestamp serverTimestamp,
      required int type}) = _$_TransactionDTO;
  const _TransactionDTO._() : super._();

  factory _TransactionDTO.fromJson(Map<String, dynamic> json) =
      _$_TransactionDTO.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  double get amount;
  @override
  String? get description;
  @override
  String get walletId;
  @override
  @ServerTimestampConverter()
  Timestamp get serverTimestamp;
  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$TransactionDTOCopyWith<_TransactionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
