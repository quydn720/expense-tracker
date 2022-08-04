// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTransactionState {
  MoneyAmount get amount => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  Wallet get wallet => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;

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
      FormzStatus status,
      TransactionType type});
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
    Object? type = freezed,
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc
abstract class _$$_AddTransactionStateCopyWith<$Res>
    implements $AddTransactionStateCopyWith<$Res> {
  factory _$$_AddTransactionStateCopyWith(_$_AddTransactionState value,
          $Res Function(_$_AddTransactionState) then) =
      __$$_AddTransactionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MoneyAmount amount,
      String category,
      Wallet wallet,
      String? description,
      FormzStatus status,
      TransactionType type});
}

/// @nodoc
class __$$_AddTransactionStateCopyWithImpl<$Res>
    extends _$AddTransactionStateCopyWithImpl<$Res>
    implements _$$_AddTransactionStateCopyWith<$Res> {
  __$$_AddTransactionStateCopyWithImpl(_$_AddTransactionState _value,
      $Res Function(_$_AddTransactionState) _then)
      : super(_value, (v) => _then(v as _$_AddTransactionState));

  @override
  _$_AddTransactionState get _value => super._value as _$_AddTransactionState;

  @override
  $Res call({
    Object? amount = freezed,
    Object? category = freezed,
    Object? wallet = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_AddTransactionState(
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
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
      this.status = FormzStatus.pure,
      this.type = TransactionType.expense});

  @override
  @JsonKey()
  final MoneyAmount amount;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final Wallet wallet;
  @override
  final String? description;
  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final TransactionType type;

  @override
  String toString() {
    return 'AddTransactionState(amount: $amount, category: $category, wallet: $wallet, description: $description, status: $status, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTransactionState &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.wallet, wallet) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(wallet),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_AddTransactionStateCopyWith<_$_AddTransactionState> get copyWith =>
      __$$_AddTransactionStateCopyWithImpl<_$_AddTransactionState>(
          this, _$identity);
}

abstract class _AddTransactionState implements AddTransactionState {
  const factory _AddTransactionState(
      {final MoneyAmount amount,
      final String category,
      final Wallet wallet,
      final String? description,
      final FormzStatus status,
      final TransactionType type}) = _$_AddTransactionState;

  @override
  MoneyAmount get amount => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  Wallet get wallet => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  TransactionType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddTransactionStateCopyWith<_$_AddTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
