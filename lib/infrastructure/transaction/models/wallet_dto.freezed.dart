// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletDTO _$WalletDTOFromJson(Map<String, dynamic> json) {
  return _WalletDTO.fromJson(json);
}

/// @nodoc
class _$WalletDTOTearOff {
  const _$WalletDTOTearOff();

  _WalletDTO call(
      {required String id,
      required double amount,
      required String imagePath,
      required String name}) {
    return _WalletDTO(
      id: id,
      amount: amount,
      imagePath: imagePath,
      name: name,
    );
  }

  WalletDTO fromJson(Map<String, Object?> json) {
    return WalletDTO.fromJson(json);
  }
}

/// @nodoc
const $WalletDTO = _$WalletDTOTearOff();

/// @nodoc
mixin _$WalletDTO {
  String get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDTOCopyWith<WalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDTOCopyWith<$Res> {
  factory $WalletDTOCopyWith(WalletDTO value, $Res Function(WalletDTO) then) =
      _$WalletDTOCopyWithImpl<$Res>;
  $Res call({String id, double amount, String imagePath, String name});
}

/// @nodoc
class _$WalletDTOCopyWithImpl<$Res> implements $WalletDTOCopyWith<$Res> {
  _$WalletDTOCopyWithImpl(this._value, this._then);

  final WalletDTO _value;
  // ignore: unused_field
  final $Res Function(WalletDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WalletDTOCopyWith<$Res> implements $WalletDTOCopyWith<$Res> {
  factory _$WalletDTOCopyWith(
          _WalletDTO value, $Res Function(_WalletDTO) then) =
      __$WalletDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, double amount, String imagePath, String name});
}

/// @nodoc
class __$WalletDTOCopyWithImpl<$Res> extends _$WalletDTOCopyWithImpl<$Res>
    implements _$WalletDTOCopyWith<$Res> {
  __$WalletDTOCopyWithImpl(_WalletDTO _value, $Res Function(_WalletDTO) _then)
      : super(_value, (v) => _then(v as _WalletDTO));

  @override
  _WalletDTO get _value => super._value as _WalletDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
  }) {
    return _then(_WalletDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletDTO extends _WalletDTO {
  const _$_WalletDTO(
      {required this.id,
      required this.amount,
      required this.imagePath,
      required this.name})
      : super._();

  factory _$_WalletDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WalletDTOFromJson(json);

  @override
  final String id;
  @override
  final double amount;
  @override
  final String imagePath;
  @override
  final String name;

  @override
  String toString() {
    return 'WalletDTO(id: $id, amount: $amount, imagePath: $imagePath, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount, imagePath, name);

  @JsonKey(ignore: true)
  @override
  _$WalletDTOCopyWith<_WalletDTO> get copyWith =>
      __$WalletDTOCopyWithImpl<_WalletDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletDTOToJson(this);
  }
}

abstract class _WalletDTO extends WalletDTO {
  const factory _WalletDTO(
      {required String id,
      required double amount,
      required String imagePath,
      required String name}) = _$_WalletDTO;
  const _WalletDTO._() : super._();

  factory _WalletDTO.fromJson(Map<String, dynamic> json) =
      _$_WalletDTO.fromJson;

  @override
  String get id;
  @override
  double get amount;
  @override
  String get imagePath;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$WalletDTOCopyWith<_WalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
