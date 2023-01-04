// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditWalletState {
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  EditWalletStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditWalletStateCopyWith<EditWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditWalletStateCopyWith<$Res> {
  factory $EditWalletStateCopyWith(
          EditWalletState value, $Res Function(EditWalletState) then) =
      _$EditWalletStateCopyWithImpl<$Res, EditWalletState>;
  @useResult
  $Res call({String name, double amount, EditWalletStatus status});
}

/// @nodoc
class _$EditWalletStateCopyWithImpl<$Res, $Val extends EditWalletState>
    implements $EditWalletStateCopyWith<$Res> {
  _$EditWalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditWalletStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditWalletStateCopyWith<$Res>
    implements $EditWalletStateCopyWith<$Res> {
  factory _$$_EditWalletStateCopyWith(
          _$_EditWalletState value, $Res Function(_$_EditWalletState) then) =
      __$$_EditWalletStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double amount, EditWalletStatus status});
}

/// @nodoc
class __$$_EditWalletStateCopyWithImpl<$Res>
    extends _$EditWalletStateCopyWithImpl<$Res, _$_EditWalletState>
    implements _$$_EditWalletStateCopyWith<$Res> {
  __$$_EditWalletStateCopyWithImpl(
      _$_EditWalletState _value, $Res Function(_$_EditWalletState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? status = null,
  }) {
    return _then(_$_EditWalletState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditWalletStatus,
    ));
  }
}

/// @nodoc

class _$_EditWalletState implements _EditWalletState {
  const _$_EditWalletState(
      {this.name = '',
      this.amount = 0.0,
      this.status = EditWalletStatus.initial});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final EditWalletStatus status;

  @override
  String toString() {
    return 'EditWalletState(name: $name, amount: $amount, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditWalletState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, amount, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditWalletStateCopyWith<_$_EditWalletState> get copyWith =>
      __$$_EditWalletStateCopyWithImpl<_$_EditWalletState>(this, _$identity);
}

abstract class _EditWalletState implements EditWalletState {
  const factory _EditWalletState(
      {final String name,
      final double amount,
      final EditWalletStatus status}) = _$_EditWalletState;

  @override
  String get name;
  @override
  double get amount;
  @override
  EditWalletStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_EditWalletStateCopyWith<_$_EditWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
