// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Wallet {
  String get id => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletCopyWith<Wallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCopyWith<$Res> {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) then) =
      _$WalletCopyWithImpl<$Res, Wallet>;
  @useResult
  $Res call({String id, double balance, String name, String iconPath});
}

/// @nodoc
class _$WalletCopyWithImpl<$Res, $Val extends Wallet>
    implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
    Object? name = null,
    Object? iconPath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$$_WalletCopyWith(_$_Wallet value, $Res Function(_$_Wallet) then) =
      __$$_WalletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double balance, String name, String iconPath});
}

/// @nodoc
class __$$_WalletCopyWithImpl<$Res>
    extends _$WalletCopyWithImpl<$Res, _$_Wallet>
    implements _$$_WalletCopyWith<$Res> {
  __$$_WalletCopyWithImpl(_$_Wallet _value, $Res Function(_$_Wallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
    Object? name = null,
    Object? iconPath = null,
  }) {
    return _then(_$_Wallet(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Wallet implements _Wallet {
  const _$_Wallet(
      {required this.id,
      required this.balance,
      required this.name,
      required this.iconPath});

  @override
  final String id;
  @override
  final double balance;
  @override
  final String name;
  @override
  final String iconPath;

  @override
  String toString() {
    return 'Wallet(id: $id, balance: $balance, name: $name, iconPath: $iconPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wallet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, balance, name, iconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletCopyWith<_$_Wallet> get copyWith =>
      __$$_WalletCopyWithImpl<_$_Wallet>(this, _$identity);
}

abstract class _Wallet implements Wallet {
  const factory _Wallet(
      {required final String id,
      required final double balance,
      required final String name,
      required final String iconPath}) = _$_Wallet;

  @override
  String get id;
  @override
  double get balance;
  @override
  String get name;
  @override
  String get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$_WalletCopyWith<_$_Wallet> get copyWith =>
      throw _privateConstructorUsedError;
}
