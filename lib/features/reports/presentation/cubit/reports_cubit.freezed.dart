// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reports_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportsState {
  Iterable<TransactionEntity> get expenses =>
      throw _privateConstructorUsedError;
  Iterable<TransactionEntity> get incomes => throw _privateConstructorUsedError;
  ReportStatus get status => throw _privateConstructorUsedError;
  Period get period => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportsStateCopyWith<ReportsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportsStateCopyWith<$Res> {
  factory $ReportsStateCopyWith(
          ReportsState value, $Res Function(ReportsState) then) =
      _$ReportsStateCopyWithImpl<$Res, ReportsState>;
  @useResult
  $Res call(
      {Iterable<TransactionEntity> expenses,
      Iterable<TransactionEntity> incomes,
      ReportStatus status,
      Period period});
}

/// @nodoc
class _$ReportsStateCopyWithImpl<$Res, $Val extends ReportsState>
    implements $ReportsStateCopyWith<$Res> {
  _$ReportsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
    Object? incomes = null,
    Object? status = null,
    Object? period = null,
  }) {
    return _then(_value.copyWith(
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as Iterable<TransactionEntity>,
      incomes: null == incomes
          ? _value.incomes
          : incomes // ignore: cast_nullable_to_non_nullable
              as Iterable<TransactionEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReportStatus,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportsStateCopyWith<$Res>
    implements $ReportsStateCopyWith<$Res> {
  factory _$$_ReportsStateCopyWith(
          _$_ReportsState value, $Res Function(_$_ReportsState) then) =
      __$$_ReportsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Iterable<TransactionEntity> expenses,
      Iterable<TransactionEntity> incomes,
      ReportStatus status,
      Period period});
}

/// @nodoc
class __$$_ReportsStateCopyWithImpl<$Res>
    extends _$ReportsStateCopyWithImpl<$Res, _$_ReportsState>
    implements _$$_ReportsStateCopyWith<$Res> {
  __$$_ReportsStateCopyWithImpl(
      _$_ReportsState _value, $Res Function(_$_ReportsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
    Object? incomes = null,
    Object? status = null,
    Object? period = null,
  }) {
    return _then(_$_ReportsState(
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as Iterable<TransactionEntity>,
      incomes: null == incomes
          ? _value.incomes
          : incomes // ignore: cast_nullable_to_non_nullable
              as Iterable<TransactionEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReportStatus,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
    ));
  }
}

/// @nodoc

class _$_ReportsState implements _ReportsState {
  const _$_ReportsState(
      {this.expenses = const [],
      this.incomes = const [],
      this.status = ReportStatus.initial,
      this.period = Period.week});

  @override
  @JsonKey()
  final Iterable<TransactionEntity> expenses;
  @override
  @JsonKey()
  final Iterable<TransactionEntity> incomes;
  @override
  @JsonKey()
  final ReportStatus status;
  @override
  @JsonKey()
  final Period period;

  @override
  String toString() {
    return 'ReportsState(expenses: $expenses, incomes: $incomes, status: $status, period: $period)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportsState &&
            const DeepCollectionEquality().equals(other.expenses, expenses) &&
            const DeepCollectionEquality().equals(other.incomes, incomes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.period, period) || other.period == period));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(expenses),
      const DeepCollectionEquality().hash(incomes),
      status,
      period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportsStateCopyWith<_$_ReportsState> get copyWith =>
      __$$_ReportsStateCopyWithImpl<_$_ReportsState>(this, _$identity);
}

abstract class _ReportsState implements ReportsState {
  const factory _ReportsState(
      {final Iterable<TransactionEntity> expenses,
      final Iterable<TransactionEntity> incomes,
      final ReportStatus status,
      final Period period}) = _$_ReportsState;

  @override
  Iterable<TransactionEntity> get expenses;
  @override
  Iterable<TransactionEntity> get incomes;
  @override
  ReportStatus get status;
  @override
  Period get period;
  @override
  @JsonKey(ignore: true)
  _$$_ReportsStateCopyWith<_$_ReportsState> get copyWith =>
      throw _privateConstructorUsedError;
}
