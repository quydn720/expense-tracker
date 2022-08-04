// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionsUpdated,
    required TResult Function() filterReseted,
    required TResult Function() filterSubmitted,
    required TResult Function(ActiveSort sort) sortChanged,
    required TResult Function(ActiveFilter filter) filterChanged,
    required TResult Function(DateTime date) dateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsUpdated value) transactionsUpdated,
    required TResult Function(FilterReseted value) filterReseted,
    required TResult Function(FilterSubmitted value) filterSubmitted,
    required TResult Function(SortChanged value) sortChanged,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(DateChanged value) dateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res> implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  final FilterEvent _value;
  // ignore: unused_field
  final $Res Function(FilterEvent) _then;
}

/// @nodoc
abstract class _$$TransactionsUpdatedCopyWith<$Res> {
  factory _$$TransactionsUpdatedCopyWith(_$TransactionsUpdated value,
          $Res Function(_$TransactionsUpdated) then) =
      __$$TransactionsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class __$$TransactionsUpdatedCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$$TransactionsUpdatedCopyWith<$Res> {
  __$$TransactionsUpdatedCopyWithImpl(
      _$TransactionsUpdated _value, $Res Function(_$TransactionsUpdated) _then)
      : super(_value, (v) => _then(v as _$TransactionsUpdated));

  @override
  _$TransactionsUpdated get _value => super._value as _$TransactionsUpdated;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(_$TransactionsUpdated(
      transactions == freezed
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$TransactionsUpdated implements TransactionsUpdated {
  const _$TransactionsUpdated(final List<Transaction> transactions)
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'FilterEvent.transactionsUpdated(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsUpdated &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  _$$TransactionsUpdatedCopyWith<_$TransactionsUpdated> get copyWith =>
      __$$TransactionsUpdatedCopyWithImpl<_$TransactionsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionsUpdated,
    required TResult Function() filterReseted,
    required TResult Function() filterSubmitted,
    required TResult Function(ActiveSort sort) sortChanged,
    required TResult Function(ActiveFilter filter) filterChanged,
    required TResult Function(DateTime date) dateChanged,
  }) {
    return transactionsUpdated(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
  }) {
    return transactionsUpdated?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
    required TResult orElse(),
  }) {
    if (transactionsUpdated != null) {
      return transactionsUpdated(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsUpdated value) transactionsUpdated,
    required TResult Function(FilterReseted value) filterReseted,
    required TResult Function(FilterSubmitted value) filterSubmitted,
    required TResult Function(SortChanged value) sortChanged,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(DateChanged value) dateChanged,
  }) {
    return transactionsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
  }) {
    return transactionsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
    required TResult orElse(),
  }) {
    if (transactionsUpdated != null) {
      return transactionsUpdated(this);
    }
    return orElse();
  }
}

abstract class TransactionsUpdated implements FilterEvent {
  const factory TransactionsUpdated(final List<Transaction> transactions) =
      _$TransactionsUpdated;

  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TransactionsUpdatedCopyWith<_$TransactionsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterResetedCopyWith<$Res> {
  factory _$$FilterResetedCopyWith(
          _$FilterReseted value, $Res Function(_$FilterReseted) then) =
      __$$FilterResetedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterResetedCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$$FilterResetedCopyWith<$Res> {
  __$$FilterResetedCopyWithImpl(
      _$FilterReseted _value, $Res Function(_$FilterReseted) _then)
      : super(_value, (v) => _then(v as _$FilterReseted));

  @override
  _$FilterReseted get _value => super._value as _$FilterReseted;
}

/// @nodoc

class _$FilterReseted implements FilterReseted {
  const _$FilterReseted();

  @override
  String toString() {
    return 'FilterEvent.filterReseted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterReseted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionsUpdated,
    required TResult Function() filterReseted,
    required TResult Function() filterSubmitted,
    required TResult Function(ActiveSort sort) sortChanged,
    required TResult Function(ActiveFilter filter) filterChanged,
    required TResult Function(DateTime date) dateChanged,
  }) {
    return filterReseted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
  }) {
    return filterReseted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
    required TResult orElse(),
  }) {
    if (filterReseted != null) {
      return filterReseted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsUpdated value) transactionsUpdated,
    required TResult Function(FilterReseted value) filterReseted,
    required TResult Function(FilterSubmitted value) filterSubmitted,
    required TResult Function(SortChanged value) sortChanged,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(DateChanged value) dateChanged,
  }) {
    return filterReseted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
  }) {
    return filterReseted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
    required TResult orElse(),
  }) {
    if (filterReseted != null) {
      return filterReseted(this);
    }
    return orElse();
  }
}

abstract class FilterReseted implements FilterEvent {
  const factory FilterReseted() = _$FilterReseted;
}

/// @nodoc
abstract class _$$FilterSubmittedCopyWith<$Res> {
  factory _$$FilterSubmittedCopyWith(
          _$FilterSubmitted value, $Res Function(_$FilterSubmitted) then) =
      __$$FilterSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterSubmittedCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$$FilterSubmittedCopyWith<$Res> {
  __$$FilterSubmittedCopyWithImpl(
      _$FilterSubmitted _value, $Res Function(_$FilterSubmitted) _then)
      : super(_value, (v) => _then(v as _$FilterSubmitted));

  @override
  _$FilterSubmitted get _value => super._value as _$FilterSubmitted;
}

/// @nodoc

class _$FilterSubmitted implements FilterSubmitted {
  const _$FilterSubmitted();

  @override
  String toString() {
    return 'FilterEvent.filterSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionsUpdated,
    required TResult Function() filterReseted,
    required TResult Function() filterSubmitted,
    required TResult Function(ActiveSort sort) sortChanged,
    required TResult Function(ActiveFilter filter) filterChanged,
    required TResult Function(DateTime date) dateChanged,
  }) {
    return filterSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
  }) {
    return filterSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
    required TResult orElse(),
  }) {
    if (filterSubmitted != null) {
      return filterSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsUpdated value) transactionsUpdated,
    required TResult Function(FilterReseted value) filterReseted,
    required TResult Function(FilterSubmitted value) filterSubmitted,
    required TResult Function(SortChanged value) sortChanged,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(DateChanged value) dateChanged,
  }) {
    return filterSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
  }) {
    return filterSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
    required TResult orElse(),
  }) {
    if (filterSubmitted != null) {
      return filterSubmitted(this);
    }
    return orElse();
  }
}

abstract class FilterSubmitted implements FilterEvent {
  const factory FilterSubmitted() = _$FilterSubmitted;
}

/// @nodoc
abstract class _$$SortChangedCopyWith<$Res> {
  factory _$$SortChangedCopyWith(
          _$SortChanged value, $Res Function(_$SortChanged) then) =
      __$$SortChangedCopyWithImpl<$Res>;
  $Res call({ActiveSort sort});
}

/// @nodoc
class __$$SortChangedCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements _$$SortChangedCopyWith<$Res> {
  __$$SortChangedCopyWithImpl(
      _$SortChanged _value, $Res Function(_$SortChanged) _then)
      : super(_value, (v) => _then(v as _$SortChanged));

  @override
  _$SortChanged get _value => super._value as _$SortChanged;

  @override
  $Res call({
    Object? sort = freezed,
  }) {
    return _then(_$SortChanged(
      sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ActiveSort,
    ));
  }
}

/// @nodoc

class _$SortChanged implements SortChanged {
  const _$SortChanged(this.sort);

  @override
  final ActiveSort sort;

  @override
  String toString() {
    return 'FilterEvent.sortChanged(sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortChanged &&
            const DeepCollectionEquality().equals(other.sort, sort));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sort));

  @JsonKey(ignore: true)
  @override
  _$$SortChangedCopyWith<_$SortChanged> get copyWith =>
      __$$SortChangedCopyWithImpl<_$SortChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionsUpdated,
    required TResult Function() filterReseted,
    required TResult Function() filterSubmitted,
    required TResult Function(ActiveSort sort) sortChanged,
    required TResult Function(ActiveFilter filter) filterChanged,
    required TResult Function(DateTime date) dateChanged,
  }) {
    return sortChanged(sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
  }) {
    return sortChanged?.call(sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsUpdated value) transactionsUpdated,
    required TResult Function(FilterReseted value) filterReseted,
    required TResult Function(FilterSubmitted value) filterSubmitted,
    required TResult Function(SortChanged value) sortChanged,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(DateChanged value) dateChanged,
  }) {
    return sortChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
  }) {
    return sortChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(this);
    }
    return orElse();
  }
}

abstract class SortChanged implements FilterEvent {
  const factory SortChanged(final ActiveSort sort) = _$SortChanged;

  ActiveSort get sort => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SortChangedCopyWith<_$SortChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterChangedCopyWith<$Res> {
  factory _$$FilterChangedCopyWith(
          _$FilterChanged value, $Res Function(_$FilterChanged) then) =
      __$$FilterChangedCopyWithImpl<$Res>;
  $Res call({ActiveFilter filter});
}

/// @nodoc
class __$$FilterChangedCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$$FilterChangedCopyWith<$Res> {
  __$$FilterChangedCopyWithImpl(
      _$FilterChanged _value, $Res Function(_$FilterChanged) _then)
      : super(_value, (v) => _then(v as _$FilterChanged));

  @override
  _$FilterChanged get _value => super._value as _$FilterChanged;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$FilterChanged(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ActiveFilter,
    ));
  }
}

/// @nodoc

class _$FilterChanged implements FilterChanged {
  const _$FilterChanged(this.filter);

  @override
  final ActiveFilter filter;

  @override
  String toString() {
    return 'FilterEvent.filterChanged(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterChanged &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$FilterChangedCopyWith<_$FilterChanged> get copyWith =>
      __$$FilterChangedCopyWithImpl<_$FilterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionsUpdated,
    required TResult Function() filterReseted,
    required TResult Function() filterSubmitted,
    required TResult Function(ActiveSort sort) sortChanged,
    required TResult Function(ActiveFilter filter) filterChanged,
    required TResult Function(DateTime date) dateChanged,
  }) {
    return filterChanged(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
  }) {
    return filterChanged?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsUpdated value) transactionsUpdated,
    required TResult Function(FilterReseted value) filterReseted,
    required TResult Function(FilterSubmitted value) filterSubmitted,
    required TResult Function(SortChanged value) sortChanged,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(DateChanged value) dateChanged,
  }) {
    return filterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
  }) {
    return filterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(this);
    }
    return orElse();
  }
}

abstract class FilterChanged implements FilterEvent {
  const factory FilterChanged(final ActiveFilter filter) = _$FilterChanged;

  ActiveFilter get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FilterChangedCopyWith<_$FilterChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateChangedCopyWith<$Res> {
  factory _$$DateChangedCopyWith(
          _$DateChanged value, $Res Function(_$DateChanged) then) =
      __$$DateChangedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateChangedCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements _$$DateChangedCopyWith<$Res> {
  __$$DateChangedCopyWithImpl(
      _$DateChanged _value, $Res Function(_$DateChanged) _then)
      : super(_value, (v) => _then(v as _$DateChanged));

  @override
  _$DateChanged get _value => super._value as _$DateChanged;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$DateChanged(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateChanged implements DateChanged {
  const _$DateChanged(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'FilterEvent.dateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateChanged &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$DateChangedCopyWith<_$DateChanged> get copyWith =>
      __$$DateChangedCopyWithImpl<_$DateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionsUpdated,
    required TResult Function() filterReseted,
    required TResult Function() filterSubmitted,
    required TResult Function(ActiveSort sort) sortChanged,
    required TResult Function(ActiveFilter filter) filterChanged,
    required TResult Function(DateTime date) dateChanged,
  }) {
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
  }) {
    return dateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionsUpdated,
    TResult Function()? filterReseted,
    TResult Function()? filterSubmitted,
    TResult Function(ActiveSort sort)? sortChanged,
    TResult Function(ActiveFilter filter)? filterChanged,
    TResult Function(DateTime date)? dateChanged,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsUpdated value) transactionsUpdated,
    required TResult Function(FilterReseted value) filterReseted,
    required TResult Function(FilterSubmitted value) filterSubmitted,
    required TResult Function(SortChanged value) sortChanged,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(DateChanged value) dateChanged,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsUpdated value)? transactionsUpdated,
    TResult Function(FilterReseted value)? filterReseted,
    TResult Function(FilterSubmitted value)? filterSubmitted,
    TResult Function(SortChanged value)? sortChanged,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(DateChanged value)? dateChanged,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class DateChanged implements FilterEvent {
  const factory DateChanged(final DateTime date) = _$DateChanged;

  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DateChangedCopyWith<_$DateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() filterLoading,
    required TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)
        filterChanging,
    required TResult Function(List<Transaction> transactions,
            ActiveFilter activeFilter, ActiveSort activeSort, DateTime date)
        filterLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)?
        filterChanging,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort, DateTime date)?
        filterLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)?
        filterChanging,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort, DateTime date)?
        filterLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterLoading value) filterLoading,
    required TResult Function(FilterChanging value) filterChanging,
    required TResult Function(FilterLoaded value) filterLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterChanging value)? filterChanging,
    TResult Function(FilterLoaded value)? filterLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterChanging value)? filterChanging,
    TResult Function(FilterLoaded value)? filterLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;
}

/// @nodoc
abstract class _$$FilterLoadingCopyWith<$Res> {
  factory _$$FilterLoadingCopyWith(
          _$FilterLoading value, $Res Function(_$FilterLoading) then) =
      __$$FilterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterLoadingCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$$FilterLoadingCopyWith<$Res> {
  __$$FilterLoadingCopyWithImpl(
      _$FilterLoading _value, $Res Function(_$FilterLoading) _then)
      : super(_value, (v) => _then(v as _$FilterLoading));

  @override
  _$FilterLoading get _value => super._value as _$FilterLoading;
}

/// @nodoc

class _$FilterLoading implements FilterLoading {
  const _$FilterLoading();

  @override
  String toString() {
    return 'FilterState.filterLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() filterLoading,
    required TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)
        filterChanging,
    required TResult Function(List<Transaction> transactions,
            ActiveFilter activeFilter, ActiveSort activeSort, DateTime date)
        filterLoaded,
  }) {
    return filterLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)?
        filterChanging,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort, DateTime date)?
        filterLoaded,
  }) {
    return filterLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)?
        filterChanging,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort, DateTime date)?
        filterLoaded,
    required TResult orElse(),
  }) {
    if (filterLoading != null) {
      return filterLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterLoading value) filterLoading,
    required TResult Function(FilterChanging value) filterChanging,
    required TResult Function(FilterLoaded value) filterLoaded,
  }) {
    return filterLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterChanging value)? filterChanging,
    TResult Function(FilterLoaded value)? filterLoaded,
  }) {
    return filterLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterChanging value)? filterChanging,
    TResult Function(FilterLoaded value)? filterLoaded,
    required TResult orElse(),
  }) {
    if (filterLoading != null) {
      return filterLoading(this);
    }
    return orElse();
  }
}

abstract class FilterLoading implements FilterState {
  const factory FilterLoading() = _$FilterLoading;
}

/// @nodoc
abstract class _$$FilterChangingCopyWith<$Res> {
  factory _$$FilterChangingCopyWith(
          _$FilterChanging value, $Res Function(_$FilterChanging) then) =
      __$$FilterChangingCopyWithImpl<$Res>;
  $Res call({ActiveFilter activeFilter, ActiveSort activeSort});
}

/// @nodoc
class __$$FilterChangingCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$$FilterChangingCopyWith<$Res> {
  __$$FilterChangingCopyWithImpl(
      _$FilterChanging _value, $Res Function(_$FilterChanging) _then)
      : super(_value, (v) => _then(v as _$FilterChanging));

  @override
  _$FilterChanging get _value => super._value as _$FilterChanging;

  @override
  $Res call({
    Object? activeFilter = freezed,
    Object? activeSort = freezed,
  }) {
    return _then(_$FilterChanging(
      activeFilter == freezed
          ? _value.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as ActiveFilter,
      activeSort == freezed
          ? _value.activeSort
          : activeSort // ignore: cast_nullable_to_non_nullable
              as ActiveSort,
    ));
  }
}

/// @nodoc

class _$FilterChanging implements FilterChanging {
  const _$FilterChanging(this.activeFilter, this.activeSort);

  @override
  final ActiveFilter activeFilter;
  @override
  final ActiveSort activeSort;

  @override
  String toString() {
    return 'FilterState.filterChanging(activeFilter: $activeFilter, activeSort: $activeSort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterChanging &&
            const DeepCollectionEquality()
                .equals(other.activeFilter, activeFilter) &&
            const DeepCollectionEquality()
                .equals(other.activeSort, activeSort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activeFilter),
      const DeepCollectionEquality().hash(activeSort));

  @JsonKey(ignore: true)
  @override
  _$$FilterChangingCopyWith<_$FilterChanging> get copyWith =>
      __$$FilterChangingCopyWithImpl<_$FilterChanging>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() filterLoading,
    required TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)
        filterChanging,
    required TResult Function(List<Transaction> transactions,
            ActiveFilter activeFilter, ActiveSort activeSort, DateTime date)
        filterLoaded,
  }) {
    return filterChanging(activeFilter, activeSort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)?
        filterChanging,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort, DateTime date)?
        filterLoaded,
  }) {
    return filterChanging?.call(activeFilter, activeSort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)?
        filterChanging,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort, DateTime date)?
        filterLoaded,
    required TResult orElse(),
  }) {
    if (filterChanging != null) {
      return filterChanging(activeFilter, activeSort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterLoading value) filterLoading,
    required TResult Function(FilterChanging value) filterChanging,
    required TResult Function(FilterLoaded value) filterLoaded,
  }) {
    return filterChanging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterChanging value)? filterChanging,
    TResult Function(FilterLoaded value)? filterLoaded,
  }) {
    return filterChanging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterChanging value)? filterChanging,
    TResult Function(FilterLoaded value)? filterLoaded,
    required TResult orElse(),
  }) {
    if (filterChanging != null) {
      return filterChanging(this);
    }
    return orElse();
  }
}

abstract class FilterChanging implements FilterState {
  const factory FilterChanging(
          final ActiveFilter activeFilter, final ActiveSort activeSort) =
      _$FilterChanging;

  ActiveFilter get activeFilter => throw _privateConstructorUsedError;
  ActiveSort get activeSort => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FilterChangingCopyWith<_$FilterChanging> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterLoadedCopyWith<$Res> {
  factory _$$FilterLoadedCopyWith(
          _$FilterLoaded value, $Res Function(_$FilterLoaded) then) =
      __$$FilterLoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Transaction> transactions,
      ActiveFilter activeFilter,
      ActiveSort activeSort,
      DateTime date});
}

/// @nodoc
class __$$FilterLoadedCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements _$$FilterLoadedCopyWith<$Res> {
  __$$FilterLoadedCopyWithImpl(
      _$FilterLoaded _value, $Res Function(_$FilterLoaded) _then)
      : super(_value, (v) => _then(v as _$FilterLoaded));

  @override
  _$FilterLoaded get _value => super._value as _$FilterLoaded;

  @override
  $Res call({
    Object? transactions = freezed,
    Object? activeFilter = freezed,
    Object? activeSort = freezed,
    Object? date = freezed,
  }) {
    return _then(_$FilterLoaded(
      transactions == freezed
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      activeFilter == freezed
          ? _value.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as ActiveFilter,
      activeSort == freezed
          ? _value.activeSort
          : activeSort // ignore: cast_nullable_to_non_nullable
              as ActiveSort,
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FilterLoaded implements FilterLoaded {
  const _$FilterLoaded(final List<Transaction> transactions, this.activeFilter,
      this.activeSort, this.date)
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final ActiveFilter activeFilter;
  @override
  final ActiveSort activeSort;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'FilterState.filterLoaded(transactions: $transactions, activeFilter: $activeFilter, activeSort: $activeSort, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterLoaded &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality()
                .equals(other.activeFilter, activeFilter) &&
            const DeepCollectionEquality()
                .equals(other.activeSort, activeSort) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(activeFilter),
      const DeepCollectionEquality().hash(activeSort),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$FilterLoadedCopyWith<_$FilterLoaded> get copyWith =>
      __$$FilterLoadedCopyWithImpl<_$FilterLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() filterLoading,
    required TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)
        filterChanging,
    required TResult Function(List<Transaction> transactions,
            ActiveFilter activeFilter, ActiveSort activeSort, DateTime date)
        filterLoaded,
  }) {
    return filterLoaded(transactions, activeFilter, activeSort, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)?
        filterChanging,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort, DateTime date)?
        filterLoaded,
  }) {
    return filterLoaded?.call(transactions, activeFilter, activeSort, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(ActiveFilter activeFilter, ActiveSort activeSort)?
        filterChanging,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort, DateTime date)?
        filterLoaded,
    required TResult orElse(),
  }) {
    if (filterLoaded != null) {
      return filterLoaded(transactions, activeFilter, activeSort, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterLoading value) filterLoading,
    required TResult Function(FilterChanging value) filterChanging,
    required TResult Function(FilterLoaded value) filterLoaded,
  }) {
    return filterLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterChanging value)? filterChanging,
    TResult Function(FilterLoaded value)? filterLoaded,
  }) {
    return filterLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterChanging value)? filterChanging,
    TResult Function(FilterLoaded value)? filterLoaded,
    required TResult orElse(),
  }) {
    if (filterLoaded != null) {
      return filterLoaded(this);
    }
    return orElse();
  }
}

abstract class FilterLoaded implements FilterState {
  const factory FilterLoaded(
      final List<Transaction> transactions,
      final ActiveFilter activeFilter,
      final ActiveSort activeSort,
      final DateTime date) = _$FilterLoaded;

  List<Transaction> get transactions => throw _privateConstructorUsedError;
  ActiveFilter get activeFilter => throw _privateConstructorUsedError;
  ActiveSort get activeSort => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FilterLoadedCopyWith<_$FilterLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
