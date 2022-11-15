// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditTransactionState {
  bool get isRepeated => throw _privateConstructorUsedError;
  bool get isNewTransaction => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  XFile? get imgFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTransactionStateCopyWith<EditTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTransactionStateCopyWith<$Res> {
  factory $EditTransactionStateCopyWith(EditTransactionState value,
          $Res Function(EditTransactionState) then) =
      _$EditTransactionStateCopyWithImpl<$Res>;
  $Res call(
      {bool isRepeated,
      bool isNewTransaction,
      Status status,
      double amount,
      String description,
      Category? category,
      XFile? imgFile});
}

/// @nodoc
class _$EditTransactionStateCopyWithImpl<$Res>
    implements $EditTransactionStateCopyWith<$Res> {
  _$EditTransactionStateCopyWithImpl(this._value, this._then);

  final EditTransactionState _value;
  // ignore: unused_field
  final $Res Function(EditTransactionState) _then;

  @override
  $Res call({
    Object? isRepeated = freezed,
    Object? isNewTransaction = freezed,
    Object? status = freezed,
    Object? amount = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? imgFile = freezed,
  }) {
    return _then(_value.copyWith(
      isRepeated: isRepeated == freezed
          ? _value.isRepeated
          : isRepeated // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewTransaction: isNewTransaction == freezed
          ? _value.isNewTransaction
          : isNewTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      imgFile: imgFile == freezed
          ? _value.imgFile
          : imgFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc
abstract class _$$_EditTransactionStateCopyWith<$Res>
    implements $EditTransactionStateCopyWith<$Res> {
  factory _$$_EditTransactionStateCopyWith(_$_EditTransactionState value,
          $Res Function(_$_EditTransactionState) then) =
      __$$_EditTransactionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isRepeated,
      bool isNewTransaction,
      Status status,
      double amount,
      String description,
      Category? category,
      XFile? imgFile});
}

/// @nodoc
class __$$_EditTransactionStateCopyWithImpl<$Res>
    extends _$EditTransactionStateCopyWithImpl<$Res>
    implements _$$_EditTransactionStateCopyWith<$Res> {
  __$$_EditTransactionStateCopyWithImpl(_$_EditTransactionState _value,
      $Res Function(_$_EditTransactionState) _then)
      : super(_value, (v) => _then(v as _$_EditTransactionState));

  @override
  _$_EditTransactionState get _value => super._value as _$_EditTransactionState;

  @override
  $Res call({
    Object? isRepeated = freezed,
    Object? isNewTransaction = freezed,
    Object? status = freezed,
    Object? amount = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? imgFile = freezed,
  }) {
    return _then(_$_EditTransactionState(
      isRepeated: isRepeated == freezed
          ? _value.isRepeated
          : isRepeated // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewTransaction: isNewTransaction == freezed
          ? _value.isNewTransaction
          : isNewTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      imgFile: imgFile == freezed
          ? _value.imgFile
          : imgFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_EditTransactionState implements _EditTransactionState {
  const _$_EditTransactionState(
      {this.isRepeated = false,
      this.isNewTransaction = false,
      this.status = Status.initital,
      this.amount = 0,
      this.description = '',
      this.category,
      this.imgFile});

  @override
  @JsonKey()
  final bool isRepeated;
  @override
  @JsonKey()
  final bool isNewTransaction;
  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final String description;
  @override
  final Category? category;
  @override
  final XFile? imgFile;

  @override
  String toString() {
    return 'EditTransactionState(isRepeated: $isRepeated, isNewTransaction: $isNewTransaction, status: $status, amount: $amount, description: $description, category: $category, imgFile: $imgFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTransactionState &&
            const DeepCollectionEquality()
                .equals(other.isRepeated, isRepeated) &&
            const DeepCollectionEquality()
                .equals(other.isNewTransaction, isNewTransaction) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.imgFile, imgFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isRepeated),
      const DeepCollectionEquality().hash(isNewTransaction),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(imgFile));

  @JsonKey(ignore: true)
  @override
  _$$_EditTransactionStateCopyWith<_$_EditTransactionState> get copyWith =>
      __$$_EditTransactionStateCopyWithImpl<_$_EditTransactionState>(
          this, _$identity);
}

abstract class _EditTransactionState implements EditTransactionState {
  const factory _EditTransactionState(
      {final bool isRepeated,
      final bool isNewTransaction,
      final Status status,
      final double amount,
      final String description,
      final Category? category,
      final XFile? imgFile}) = _$_EditTransactionState;

  @override
  bool get isRepeated;
  @override
  bool get isNewTransaction;
  @override
  Status get status;
  @override
  double get amount;
  @override
  String get description;
  @override
  Category? get category;
  @override
  XFile? get imgFile;
  @override
  @JsonKey(ignore: true)
  _$$_EditTransactionStateCopyWith<_$_EditTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
