// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_budget_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditBudgetState {
  AmountText get amountText => throw _privateConstructorUsedError;
  EditBudgetStatus get status => throw _privateConstructorUsedError;
  FormzStatus get formzStatus => throw _privateConstructorUsedError;
  bool get receiveAlert => throw _privateConstructorUsedError;
  double get whenToNotify => throw _privateConstructorUsedError;
  CategoryEntity? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditBudgetStateCopyWith<EditBudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditBudgetStateCopyWith<$Res> {
  factory $EditBudgetStateCopyWith(
          EditBudgetState value, $Res Function(EditBudgetState) then) =
      _$EditBudgetStateCopyWithImpl<$Res, EditBudgetState>;
  @useResult
  $Res call(
      {AmountText amountText,
      EditBudgetStatus status,
      FormzStatus formzStatus,
      bool receiveAlert,
      double whenToNotify,
      CategoryEntity? category});

  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class _$EditBudgetStateCopyWithImpl<$Res, $Val extends EditBudgetState>
    implements $EditBudgetStateCopyWith<$Res> {
  _$EditBudgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountText = null,
    Object? status = null,
    Object? formzStatus = null,
    Object? receiveAlert = null,
    Object? whenToNotify = null,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      amountText: null == amountText
          ? _value.amountText
          : amountText // ignore: cast_nullable_to_non_nullable
              as AmountText,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditBudgetStatus,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      receiveAlert: null == receiveAlert
          ? _value.receiveAlert
          : receiveAlert // ignore: cast_nullable_to_non_nullable
              as bool,
      whenToNotify: null == whenToNotify
          ? _value.whenToNotify
          : whenToNotify // ignore: cast_nullable_to_non_nullable
              as double,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EditBudgetInitialCopyWith<$Res>
    implements $EditBudgetStateCopyWith<$Res> {
  factory _$$_EditBudgetInitialCopyWith(_$_EditBudgetInitial value,
          $Res Function(_$_EditBudgetInitial) then) =
      __$$_EditBudgetInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AmountText amountText,
      EditBudgetStatus status,
      FormzStatus formzStatus,
      bool receiveAlert,
      double whenToNotify,
      CategoryEntity? category});

  @override
  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_EditBudgetInitialCopyWithImpl<$Res>
    extends _$EditBudgetStateCopyWithImpl<$Res, _$_EditBudgetInitial>
    implements _$$_EditBudgetInitialCopyWith<$Res> {
  __$$_EditBudgetInitialCopyWithImpl(
      _$_EditBudgetInitial _value, $Res Function(_$_EditBudgetInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountText = null,
    Object? status = null,
    Object? formzStatus = null,
    Object? receiveAlert = null,
    Object? whenToNotify = null,
    Object? category = freezed,
  }) {
    return _then(_$_EditBudgetInitial(
      amountText: null == amountText
          ? _value.amountText
          : amountText // ignore: cast_nullable_to_non_nullable
              as AmountText,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditBudgetStatus,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      receiveAlert: null == receiveAlert
          ? _value.receiveAlert
          : receiveAlert // ignore: cast_nullable_to_non_nullable
              as bool,
      whenToNotify: null == whenToNotify
          ? _value.whenToNotify
          : whenToNotify // ignore: cast_nullable_to_non_nullable
              as double,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
    ));
  }
}

/// @nodoc

class _$_EditBudgetInitial implements _EditBudgetInitial {
  const _$_EditBudgetInitial(
      {this.amountText = const AmountText.pure(),
      this.status = EditBudgetStatus.initial,
      this.formzStatus = FormzStatus.pure,
      this.receiveAlert = false,
      this.whenToNotify = 0.75,
      this.category});

  @override
  @JsonKey()
  final AmountText amountText;
  @override
  @JsonKey()
  final EditBudgetStatus status;
  @override
  @JsonKey()
  final FormzStatus formzStatus;
  @override
  @JsonKey()
  final bool receiveAlert;
  @override
  @JsonKey()
  final double whenToNotify;
  @override
  final CategoryEntity? category;

  @override
  String toString() {
    return 'EditBudgetState(amountText: $amountText, status: $status, formzStatus: $formzStatus, receiveAlert: $receiveAlert, whenToNotify: $whenToNotify, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditBudgetInitial &&
            (identical(other.amountText, amountText) ||
                other.amountText == amountText) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.formzStatus, formzStatus) ||
                other.formzStatus == formzStatus) &&
            (identical(other.receiveAlert, receiveAlert) ||
                other.receiveAlert == receiveAlert) &&
            (identical(other.whenToNotify, whenToNotify) ||
                other.whenToNotify == whenToNotify) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountText, status, formzStatus,
      receiveAlert, whenToNotify, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditBudgetInitialCopyWith<_$_EditBudgetInitial> get copyWith =>
      __$$_EditBudgetInitialCopyWithImpl<_$_EditBudgetInitial>(
          this, _$identity);
}

abstract class _EditBudgetInitial implements EditBudgetState {
  const factory _EditBudgetInitial(
      {final AmountText amountText,
      final EditBudgetStatus status,
      final FormzStatus formzStatus,
      final bool receiveAlert,
      final double whenToNotify,
      final CategoryEntity? category}) = _$_EditBudgetInitial;

  @override
  AmountText get amountText;
  @override
  EditBudgetStatus get status;
  @override
  FormzStatus get formzStatus;
  @override
  bool get receiveAlert;
  @override
  double get whenToNotify;
  @override
  CategoryEntity? get category;
  @override
  @JsonKey(ignore: true)
  _$$_EditBudgetInitialCopyWith<_$_EditBudgetInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
