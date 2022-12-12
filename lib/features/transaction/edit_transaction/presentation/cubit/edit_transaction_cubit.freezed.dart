// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditTransactionState {
  AmountText get amount => throw _privateConstructorUsedError;
  CategoryField get category => throw _privateConstructorUsedError;
  bool get isRepeated => throw _privateConstructorUsedError;
  bool get isNewTransaction => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  XFile? get imgFile => throw _privateConstructorUsedError;
  FormzStatus get formzStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTransactionStateCopyWith<EditTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTransactionStateCopyWith<$Res> {
  factory $EditTransactionStateCopyWith(EditTransactionState value,
          $Res Function(EditTransactionState) then) =
      _$EditTransactionStateCopyWithImpl<$Res, EditTransactionState>;
  @useResult
  $Res call(
      {AmountText amount,
      CategoryField category,
      bool isRepeated,
      bool isNewTransaction,
      Status status,
      String description,
      DateTime date,
      XFile? imgFile,
      FormzStatus formzStatus});
}

/// @nodoc
class _$EditTransactionStateCopyWithImpl<$Res,
        $Val extends EditTransactionState>
    implements $EditTransactionStateCopyWith<$Res> {
  _$EditTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? category = null,
    Object? isRepeated = null,
    Object? isNewTransaction = null,
    Object? status = null,
    Object? description = null,
    Object? date = null,
    Object? imgFile = freezed,
    Object? formzStatus = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountText,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryField,
      isRepeated: null == isRepeated
          ? _value.isRepeated
          : isRepeated // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewTransaction: null == isNewTransaction
          ? _value.isNewTransaction
          : isNewTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imgFile: freezed == imgFile
          ? _value.imgFile
          : imgFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditTransactionStateCopyWith<$Res>
    implements $EditTransactionStateCopyWith<$Res> {
  factory _$$_EditTransactionStateCopyWith(_$_EditTransactionState value,
          $Res Function(_$_EditTransactionState) then) =
      __$$_EditTransactionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AmountText amount,
      CategoryField category,
      bool isRepeated,
      bool isNewTransaction,
      Status status,
      String description,
      DateTime date,
      XFile? imgFile,
      FormzStatus formzStatus});
}

/// @nodoc
class __$$_EditTransactionStateCopyWithImpl<$Res>
    extends _$EditTransactionStateCopyWithImpl<$Res, _$_EditTransactionState>
    implements _$$_EditTransactionStateCopyWith<$Res> {
  __$$_EditTransactionStateCopyWithImpl(_$_EditTransactionState _value,
      $Res Function(_$_EditTransactionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? category = null,
    Object? isRepeated = null,
    Object? isNewTransaction = null,
    Object? status = null,
    Object? description = null,
    Object? date = null,
    Object? imgFile = freezed,
    Object? formzStatus = null,
  }) {
    return _then(_$_EditTransactionState(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountText,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryField,
      isRepeated: null == isRepeated
          ? _value.isRepeated
          : isRepeated // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewTransaction: null == isNewTransaction
          ? _value.isNewTransaction
          : isNewTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imgFile: freezed == imgFile
          ? _value.imgFile
          : imgFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_EditTransactionState implements _EditTransactionState {
  const _$_EditTransactionState(
      {this.amount = const AmountText.pure(),
      this.category = const CategoryField.pure(),
      this.isRepeated = false,
      this.isNewTransaction = true,
      this.status = Status.initital,
      this.description = '',
      required this.date,
      this.imgFile,
      this.formzStatus = FormzStatus.pure});

  @override
  @JsonKey()
  final AmountText amount;
  @override
  @JsonKey()
  final CategoryField category;
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
  final String description;
  @override
  final DateTime date;
  @override
  final XFile? imgFile;
  @override
  @JsonKey()
  final FormzStatus formzStatus;

  @override
  String toString() {
    return 'EditTransactionState(amount: $amount, category: $category, isRepeated: $isRepeated, isNewTransaction: $isNewTransaction, status: $status, description: $description, date: $date, imgFile: $imgFile, formzStatus: $formzStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTransactionState &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isRepeated, isRepeated) ||
                other.isRepeated == isRepeated) &&
            (identical(other.isNewTransaction, isNewTransaction) ||
                other.isNewTransaction == isNewTransaction) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.imgFile, imgFile) || other.imgFile == imgFile) &&
            (identical(other.formzStatus, formzStatus) ||
                other.formzStatus == formzStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, category, isRepeated,
      isNewTransaction, status, description, date, imgFile, formzStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditTransactionStateCopyWith<_$_EditTransactionState> get copyWith =>
      __$$_EditTransactionStateCopyWithImpl<_$_EditTransactionState>(
          this, _$identity);
}

abstract class _EditTransactionState implements EditTransactionState {
  const factory _EditTransactionState(
      {final AmountText amount,
      final CategoryField category,
      final bool isRepeated,
      final bool isNewTransaction,
      final Status status,
      final String description,
      required final DateTime date,
      final XFile? imgFile,
      final FormzStatus formzStatus}) = _$_EditTransactionState;

  @override
  AmountText get amount;
  @override
  CategoryField get category;
  @override
  bool get isRepeated;
  @override
  bool get isNewTransaction;
  @override
  Status get status;
  @override
  String get description;
  @override
  DateTime get date;
  @override
  XFile? get imgFile;
  @override
  FormzStatus get formzStatus;
  @override
  @JsonKey(ignore: true)
  _$$_EditTransactionStateCopyWith<_$_EditTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
