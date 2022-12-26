// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'budget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Budget {
  String get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get spentAmount => throw _privateConstructorUsedError;
  double? get whenToNotify => throw _privateConstructorUsedError;
  CategoryEntity get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BudgetCopyWith<Budget> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetCopyWith<$Res> {
  factory $BudgetCopyWith(Budget value, $Res Function(Budget) then) =
      _$BudgetCopyWithImpl<$Res, Budget>;
  @useResult
  $Res call(
      {String id,
      double amount,
      double spentAmount,
      double? whenToNotify,
      CategoryEntity category});

  $CategoryEntityCopyWith<$Res> get category;
}

/// @nodoc
class _$BudgetCopyWithImpl<$Res, $Val extends Budget>
    implements $BudgetCopyWith<$Res> {
  _$BudgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? spentAmount = null,
    Object? whenToNotify = freezed,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      spentAmount: null == spentAmount
          ? _value.spentAmount
          : spentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      whenToNotify: freezed == whenToNotify
          ? _value.whenToNotify
          : whenToNotify // ignore: cast_nullable_to_non_nullable
              as double?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res> get category {
    return $CategoryEntityCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BudgetCopyWith<$Res> implements $BudgetCopyWith<$Res> {
  factory _$$_BudgetCopyWith(_$_Budget value, $Res Function(_$_Budget) then) =
      __$$_BudgetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double amount,
      double spentAmount,
      double? whenToNotify,
      CategoryEntity category});

  @override
  $CategoryEntityCopyWith<$Res> get category;
}

/// @nodoc
class __$$_BudgetCopyWithImpl<$Res>
    extends _$BudgetCopyWithImpl<$Res, _$_Budget>
    implements _$$_BudgetCopyWith<$Res> {
  __$$_BudgetCopyWithImpl(_$_Budget _value, $Res Function(_$_Budget) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? spentAmount = null,
    Object? whenToNotify = freezed,
    Object? category = null,
  }) {
    return _then(_$_Budget(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      spentAmount: null == spentAmount
          ? _value.spentAmount
          : spentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      whenToNotify: freezed == whenToNotify
          ? _value.whenToNotify
          : whenToNotify // ignore: cast_nullable_to_non_nullable
              as double?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
    ));
  }
}

/// @nodoc

class _$_Budget extends _Budget {
  const _$_Budget(
      {required this.id,
      required this.amount,
      this.spentAmount = 0,
      this.whenToNotify,
      required this.category})
      : super._();

  @override
  final String id;
  @override
  final double amount;
  @override
  @JsonKey()
  final double spentAmount;
  @override
  final double? whenToNotify;
  @override
  final CategoryEntity category;

  @override
  String toString() {
    return 'Budget(id: $id, amount: $amount, spentAmount: $spentAmount, whenToNotify: $whenToNotify, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Budget &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.spentAmount, spentAmount) ||
                other.spentAmount == spentAmount) &&
            (identical(other.whenToNotify, whenToNotify) ||
                other.whenToNotify == whenToNotify) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, spentAmount, whenToNotify, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BudgetCopyWith<_$_Budget> get copyWith =>
      __$$_BudgetCopyWithImpl<_$_Budget>(this, _$identity);
}

abstract class _Budget extends Budget {
  const factory _Budget(
      {required final String id,
      required final double amount,
      final double spentAmount,
      final double? whenToNotify,
      required final CategoryEntity category}) = _$_Budget;
  const _Budget._() : super._();

  @override
  String get id;
  @override
  double get amount;
  @override
  double get spentAmount;
  @override
  double? get whenToNotify;
  @override
  CategoryEntity get category;
  @override
  @JsonKey(ignore: true)
  _$$_BudgetCopyWith<_$_Budget> get copyWith =>
      throw _privateConstructorUsedError;
}
