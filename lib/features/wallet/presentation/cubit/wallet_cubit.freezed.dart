// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletState {
  List<Wallet> get wallets => throw _privateConstructorUsedError;
  WalletStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
  @useResult
  $Res call({List<Wallet> wallets, WalletStatus status});
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalletStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletStateCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$_WalletStateCopyWith(
          _$_WalletState value, $Res Function(_$_WalletState) then) =
      __$$_WalletStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Wallet> wallets, WalletStatus status});
}

/// @nodoc
class __$$_WalletStateCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$_WalletState>
    implements _$$_WalletStateCopyWith<$Res> {
  __$$_WalletStateCopyWithImpl(
      _$_WalletState _value, $Res Function(_$_WalletState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
    Object? status = null,
  }) {
    return _then(_$_WalletState(
      wallets: null == wallets
          ? _value._wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalletStatus,
    ));
  }
}

/// @nodoc

class _$_WalletState extends _WalletState {
  const _$_WalletState(
      {final List<Wallet> wallets = const [],
      this.status = WalletStatus.initial})
      : _wallets = wallets,
        super._();

  final List<Wallet> _wallets;
  @override
  @JsonKey()
  List<Wallet> get wallets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallets);
  }

  @override
  @JsonKey()
  final WalletStatus status;

  @override
  String toString() {
    return 'WalletState(wallets: $wallets, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletState &&
            const DeepCollectionEquality().equals(other._wallets, _wallets) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_wallets), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletStateCopyWith<_$_WalletState> get copyWith =>
      __$$_WalletStateCopyWithImpl<_$_WalletState>(this, _$identity);
}

abstract class _WalletState extends WalletState {
  const factory _WalletState(
      {final List<Wallet> wallets, final WalletStatus status}) = _$_WalletState;
  const _WalletState._() : super._();

  @override
  List<Wallet> get wallets;
  @override
  WalletStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_WalletStateCopyWith<_$_WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
