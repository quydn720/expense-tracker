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
  FormzStatus get formzStatus => throw _privateConstructorUsedError;
  EditBudgetStatus get status => throw _privateConstructorUsedError;
  AmountText get amountText => throw _privateConstructorUsedError;
  bool get receiveAlert => throw _privateConstructorUsedError;
  double get whenToNotify => throw _privateConstructorUsedError;
  CategoryEntity? get category => throw _privateConstructorUsedError;
  Budget? get initialBudget => throw _privateConstructorUsedError;

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
      {FormzStatus formzStatus,
      EditBudgetStatus status,
      AmountText amountText,
      bool receiveAlert,
      double whenToNotify,
      CategoryEntity? category,
      Budget? initialBudget});

  $CategoryEntityCopyWith<$Res>? get category;
  $BudgetCopyWith<$Res>? get initialBudget;
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
    Object? formzStatus = null,
    Object? status = null,
    Object? amountText = null,
    Object? receiveAlert = null,
    Object? whenToNotify = null,
    Object? category = freezed,
    Object? initialBudget = freezed,
  }) {
    return _then(_value.copyWith(
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditBudgetStatus,
      amountText: null == amountText
          ? _value.amountText
          : amountText // ignore: cast_nullable_to_non_nullable
              as AmountText,
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
      initialBudget: freezed == initialBudget
          ? _value.initialBudget
          : initialBudget // ignore: cast_nullable_to_non_nullable
              as Budget?,
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

  @override
  @pragma('vm:prefer-inline')
  $BudgetCopyWith<$Res>? get initialBudget {
    if (_value.initialBudget == null) {
      return null;
    }

    return $BudgetCopyWith<$Res>(_value.initialBudget!, (value) {
      return _then(_value.copyWith(initialBudget: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EditBudgetStateCopyWith<$Res>
    implements $EditBudgetStateCopyWith<$Res> {
  factory _$$_EditBudgetStateCopyWith(
          _$_EditBudgetState value, $Res Function(_$_EditBudgetState) then) =
      __$$_EditBudgetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus formzStatus,
      EditBudgetStatus status,
      AmountText amountText,
      bool receiveAlert,
      double whenToNotify,
      CategoryEntity? category,
      Budget? initialBudget});

  @override
  $CategoryEntityCopyWith<$Res>? get category;
  @override
  $BudgetCopyWith<$Res>? get initialBudget;
}

/// @nodoc
class __$$_EditBudgetStateCopyWithImpl<$Res>
    extends _$EditBudgetStateCopyWithImpl<$Res, _$_EditBudgetState>
    implements _$$_EditBudgetStateCopyWith<$Res> {
  __$$_EditBudgetStateCopyWithImpl(
      _$_EditBudgetState _value, $Res Function(_$_EditBudgetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formzStatus = null,
    Object? status = null,
    Object? amountText = null,
    Object? receiveAlert = null,
    Object? whenToNotify = null,
    Object? category = freezed,
    Object? initialBudget = freezed,
  }) {
    return _then(_$_EditBudgetState(
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditBudgetStatus,
      amountText: null == amountText
          ? _value.amountText
          : amountText // ignore: cast_nullable_to_non_nullable
              as AmountText,
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
      initialBudget: freezed == initialBudget
          ? _value.initialBudget
          : initialBudget // ignore: cast_nullable_to_non_nullable
              as Budget?,
    ));
  }
}

/// @nodoc

class _$_EditBudgetState extends _EditBudgetState {
  const _$_EditBudgetState(
      {this.formzStatus = FormzStatus.pure,
      this.status = EditBudgetStatus.initial,
      required this.amountText,
      required this.receiveAlert,
      required this.whenToNotify,
      this.category,
      this.initialBudget})
      : super._();

  @override
  @JsonKey()
  final FormzStatus formzStatus;
  @override
  @JsonKey()
  final EditBudgetStatus status;
  @override
  final AmountText amountText;
  @override
  final bool receiveAlert;
  @override
  final double whenToNotify;
  @override
  final CategoryEntity? category;
  @override
  final Budget? initialBudget;

  @override
  String toString() {
    return 'EditBudgetState(formzStatus: $formzStatus, status: $status, amountText: $amountText, receiveAlert: $receiveAlert, whenToNotify: $whenToNotify, category: $category, initialBudget: $initialBudget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditBudgetState &&
            (identical(other.formzStatus, formzStatus) ||
                other.formzStatus == formzStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amountText, amountText) ||
                other.amountText == amountText) &&
            (identical(other.receiveAlert, receiveAlert) ||
                other.receiveAlert == receiveAlert) &&
            (identical(other.whenToNotify, whenToNotify) ||
                other.whenToNotify == whenToNotify) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.initialBudget, initialBudget) ||
                other.initialBudget == initialBudget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formzStatus, status, amountText,
      receiveAlert, whenToNotify, category, initialBudget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditBudgetStateCopyWith<_$_EditBudgetState> get copyWith =>
      __$$_EditBudgetStateCopyWithImpl<_$_EditBudgetState>(this, _$identity);
}

abstract class _EditBudgetState extends EditBudgetState {
  const factory _EditBudgetState(
      {final FormzStatus formzStatus,
      final EditBudgetStatus status,
      required final AmountText amountText,
      required final bool receiveAlert,
      required final double whenToNotify,
      final CategoryEntity? category,
      final Budget? initialBudget}) = _$_EditBudgetState;
  const _EditBudgetState._() : super._();

  @override
  FormzStatus get formzStatus;
  @override
  EditBudgetStatus get status;
  @override
  AmountText get amountText;
  @override
  bool get receiveAlert;
  @override
  double get whenToNotify;
  @override
  CategoryEntity? get category;
  @override
  Budget? get initialBudget;
  @override
  @JsonKey(ignore: true)
  _$$_EditBudgetStateCopyWith<_$_EditBudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}
