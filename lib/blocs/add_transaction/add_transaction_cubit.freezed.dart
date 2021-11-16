// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddTransactionStateTearOff {
  const _$AddTransactionStateTearOff();

  _AddTransactionState call(
      {MoneyAmount amount = const MoneyAmount.pure(),
      String category = 'Category',
      Wallet wallet = const Wallet.pure('', 0, '', '', Color(0xff000000)),
      String? description,
      FormzStatus status = FormzStatus.pure}) {
    return _AddTransactionState(
      amount: amount,
      category: category,
      wallet: wallet,
      description: description,
      status: status,
    );
  }
}

/// @nodoc
const $AddTransactionState = _$AddTransactionStateTearOff();

/// @nodoc
mixin _$AddTransactionState {
  MoneyAmount get amount => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  Wallet get wallet => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTransactionStateCopyWith<AddTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionStateCopyWith<$Res> {
  factory $AddTransactionStateCopyWith(
          AddTransactionState value, $Res Function(AddTransactionState) then) =
      _$AddTransactionStateCopyWithImpl<$Res>;
  $Res call(
      {MoneyAmount amount,
      String category,
      Wallet wallet,
      String? description,
      FormzStatus status});
}

/// @nodoc
class _$AddTransactionStateCopyWithImpl<$Res>
    implements $AddTransactionStateCopyWith<$Res> {
  _$AddTransactionStateCopyWithImpl(this._value, this._then);

  final AddTransactionState _value;
  // ignore: unused_field
  final $Res Function(AddTransactionState) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? category = freezed,
    Object? wallet = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as MoneyAmount,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$AddTransactionStateCopyWith<$Res>
    implements $AddTransactionStateCopyWith<$Res> {
  factory _$AddTransactionStateCopyWith(_AddTransactionState value,
          $Res Function(_AddTransactionState) then) =
      __$AddTransactionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MoneyAmount amount,
      String category,
      Wallet wallet,
      String? description,
      FormzStatus status});
}

/// @nodoc
class __$AddTransactionStateCopyWithImpl<$Res>
    extends _$AddTransactionStateCopyWithImpl<$Res>
    implements _$AddTransactionStateCopyWith<$Res> {
  __$AddTransactionStateCopyWithImpl(
      _AddTransactionState _value, $Res Function(_AddTransactionState) _then)
      : super(_value, (v) => _then(v as _AddTransactionState));

  @override
  _AddTransactionState get _value => super._value as _AddTransactionState;

  @override
  $Res call({
    Object? amount = freezed,
    Object? category = freezed,
    Object? wallet = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_AddTransactionState(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as MoneyAmount,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_AddTransactionState implements _AddTransactionState {
  const _$_AddTransactionState(
      {this.amount = const MoneyAmount.pure(),
      this.category = 'Category',
      this.wallet = const Wallet.pure('', 0, '', '', Color(0xff000000)),
      this.description,
      this.status = FormzStatus.pure});

  @JsonKey(defaultValue: const MoneyAmount.pure())
  @override
  final MoneyAmount amount;
  @JsonKey(defaultValue: 'Category')
  @override
  final String category;
  @JsonKey(defaultValue: const Wallet.pure('', 0, '', '', Color(0xff000000)))
  @override
  final Wallet wallet;
  @override
  final String? description;
  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'AddTransactionState(amount: $amount, category: $category, wallet: $wallet, description: $description, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddTransactionState &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, category, wallet, description, status);

  @JsonKey(ignore: true)
  @override
  _$AddTransactionStateCopyWith<_AddTransactionState> get copyWith =>
      __$AddTransactionStateCopyWithImpl<_AddTransactionState>(
          this, _$identity);
}

abstract class _AddTransactionState implements AddTransactionState {
  const factory _AddTransactionState(
      {MoneyAmount amount,
      String category,
      Wallet wallet,
      String? description,
      FormzStatus status}) = _$_AddTransactionState;

  @override
  MoneyAmount get amount;
  @override
  String get category;
  @override
  Wallet get wallet;
  @override
  String? get description;
  @override
  FormzStatus get status;
  @override
  @JsonKey(ignore: true)
  _$AddTransactionStateCopyWith<_AddTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
