// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEntity {
  String get id => throw _privateConstructorUsedError;
  CategoryEntity get category => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get walletId => throw _privateConstructorUsedError;
  Wallet? get wallet => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  XFile? get file => throw _privateConstructorUsedError;
  bool get isRepeated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionEntityCopyWith<TransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEntityCopyWith<$Res> {
  factory $TransactionEntityCopyWith(
          TransactionEntity value, $Res Function(TransactionEntity) then) =
      _$TransactionEntityCopyWithImpl<$Res, TransactionEntity>;
  @useResult
  $Res call(
      {String id,
      CategoryEntity category,
      DateTime dateCreated,
      double amount,
      String walletId,
      Wallet? wallet,
      String? description,
      XFile? file,
      bool isRepeated});

  $CategoryEntityCopyWith<$Res> get category;
  $WalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$TransactionEntityCopyWithImpl<$Res, $Val extends TransactionEntity>
    implements $TransactionEntityCopyWith<$Res> {
  _$TransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? dateCreated = null,
    Object? amount = null,
    Object? walletId = null,
    Object? wallet = freezed,
    Object? description = freezed,
    Object? file = freezed,
    Object? isRepeated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
      isRepeated: null == isRepeated
          ? _value.isRepeated
          : isRepeated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res> get category {
    return $CategoryEntityCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $WalletCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionEntityCopyWith<$Res>
    implements $TransactionEntityCopyWith<$Res> {
  factory _$$_TransactionEntityCopyWith(_$_TransactionEntity value,
          $Res Function(_$_TransactionEntity) then) =
      __$$_TransactionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      CategoryEntity category,
      DateTime dateCreated,
      double amount,
      String walletId,
      Wallet? wallet,
      String? description,
      XFile? file,
      bool isRepeated});

  @override
  $CategoryEntityCopyWith<$Res> get category;
  @override
  $WalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$$_TransactionEntityCopyWithImpl<$Res>
    extends _$TransactionEntityCopyWithImpl<$Res, _$_TransactionEntity>
    implements _$$_TransactionEntityCopyWith<$Res> {
  __$$_TransactionEntityCopyWithImpl(
      _$_TransactionEntity _value, $Res Function(_$_TransactionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? dateCreated = null,
    Object? amount = null,
    Object? walletId = null,
    Object? wallet = freezed,
    Object? description = freezed,
    Object? file = freezed,
    Object? isRepeated = null,
  }) {
    return _then(_$_TransactionEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
      isRepeated: null == isRepeated
          ? _value.isRepeated
          : isRepeated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TransactionEntity extends _TransactionEntity {
  const _$_TransactionEntity(
      {required this.id,
      required this.category,
      required this.dateCreated,
      required this.amount,
      required this.walletId,
      this.wallet,
      this.description,
      this.file,
      this.isRepeated = false})
      : super._();

  @override
  final String id;
  @override
  final CategoryEntity category;
  @override
  final DateTime dateCreated;
  @override
  final double amount;
  @override
  final String walletId;
  @override
  final Wallet? wallet;
  @override
  final String? description;
  @override
  final XFile? file;
  @override
  @JsonKey()
  final bool isRepeated;

  @override
  String toString() {
    return 'TransactionEntity(id: $id, category: $category, dateCreated: $dateCreated, amount: $amount, walletId: $walletId, wallet: $wallet, description: $description, file: $file, isRepeated: $isRepeated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.isRepeated, isRepeated) ||
                other.isRepeated == isRepeated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, category, dateCreated,
      amount, walletId, wallet, description, file, isRepeated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionEntityCopyWith<_$_TransactionEntity> get copyWith =>
      __$$_TransactionEntityCopyWithImpl<_$_TransactionEntity>(
          this, _$identity);
}

abstract class _TransactionEntity extends TransactionEntity {
  const factory _TransactionEntity(
      {required final String id,
      required final CategoryEntity category,
      required final DateTime dateCreated,
      required final double amount,
      required final String walletId,
      final Wallet? wallet,
      final String? description,
      final XFile? file,
      final bool isRepeated}) = _$_TransactionEntity;
  const _TransactionEntity._() : super._();

  @override
  String get id;
  @override
  CategoryEntity get category;
  @override
  DateTime get dateCreated;
  @override
  double get amount;
  @override
  String get walletId;
  @override
  Wallet? get wallet;
  @override
  String? get description;
  @override
  XFile? get file;
  @override
  bool get isRepeated;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionEntityCopyWith<_$_TransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
