// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterEventTearOff {
  const _$FilterEventTearOff();

  TransactionsUpdated transactionsUpdated(List<Transaction> transactions) {
    return TransactionsUpdated(
      transactions,
    );
  }

  FilterReseted filterReseted() {
    return const FilterReseted();
  }

  FilterSubmitted filterSubmitted() {
    return const FilterSubmitted();
  }

  SortChanged sortChanged(ActiveSort sort) {
    return SortChanged(
      sort,
    );
  }

  FilterChanged filterChanged(ActiveFilter filter) {
    return FilterChanged(
      filter,
    );
  }

  DateChanged dateChanged(DateTime date) {
    return DateChanged(
      date,
    );
  }
}

/// @nodoc
const $FilterEvent = _$FilterEventTearOff();

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
abstract class $TransactionsUpdatedCopyWith<$Res> {
  factory $TransactionsUpdatedCopyWith(
          TransactionsUpdated value, $Res Function(TransactionsUpdated) then) =
      _$TransactionsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class _$TransactionsUpdatedCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements $TransactionsUpdatedCopyWith<$Res> {
  _$TransactionsUpdatedCopyWithImpl(
      TransactionsUpdated _value, $Res Function(TransactionsUpdated) _then)
      : super(_value, (v) => _then(v as TransactionsUpdated));

  @override
  TransactionsUpdated get _value => super._value as TransactionsUpdated;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(TransactionsUpdated(
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$TransactionsUpdated implements TransactionsUpdated {
  const _$TransactionsUpdated(this.transactions);

  @override
  final List<Transaction> transactions;

  @override
  String toString() {
    return 'FilterEvent.transactionsUpdated(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionsUpdated &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactions));

  @JsonKey(ignore: true)
  @override
  $TransactionsUpdatedCopyWith<TransactionsUpdated> get copyWith =>
      _$TransactionsUpdatedCopyWithImpl<TransactionsUpdated>(this, _$identity);

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
  const factory TransactionsUpdated(List<Transaction> transactions) =
      _$TransactionsUpdated;

  List<Transaction> get transactions;
  @JsonKey(ignore: true)
  $TransactionsUpdatedCopyWith<TransactionsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterResetedCopyWith<$Res> {
  factory $FilterResetedCopyWith(
          FilterReseted value, $Res Function(FilterReseted) then) =
      _$FilterResetedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterResetedCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements $FilterResetedCopyWith<$Res> {
  _$FilterResetedCopyWithImpl(
      FilterReseted _value, $Res Function(FilterReseted) _then)
      : super(_value, (v) => _then(v as FilterReseted));

  @override
  FilterReseted get _value => super._value as FilterReseted;
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
        (other.runtimeType == runtimeType && other is FilterReseted);
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
abstract class $FilterSubmittedCopyWith<$Res> {
  factory $FilterSubmittedCopyWith(
          FilterSubmitted value, $Res Function(FilterSubmitted) then) =
      _$FilterSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterSubmittedCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements $FilterSubmittedCopyWith<$Res> {
  _$FilterSubmittedCopyWithImpl(
      FilterSubmitted _value, $Res Function(FilterSubmitted) _then)
      : super(_value, (v) => _then(v as FilterSubmitted));

  @override
  FilterSubmitted get _value => super._value as FilterSubmitted;
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
        (other.runtimeType == runtimeType && other is FilterSubmitted);
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
abstract class $SortChangedCopyWith<$Res> {
  factory $SortChangedCopyWith(
          SortChanged value, $Res Function(SortChanged) then) =
      _$SortChangedCopyWithImpl<$Res>;
  $Res call({ActiveSort sort});
}

/// @nodoc
class _$SortChangedCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements $SortChangedCopyWith<$Res> {
  _$SortChangedCopyWithImpl(
      SortChanged _value, $Res Function(SortChanged) _then)
      : super(_value, (v) => _then(v as SortChanged));

  @override
  SortChanged get _value => super._value as SortChanged;

  @override
  $Res call({
    Object? sort = freezed,
  }) {
    return _then(SortChanged(
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
            other is SortChanged &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort);

  @JsonKey(ignore: true)
  @override
  $SortChangedCopyWith<SortChanged> get copyWith =>
      _$SortChangedCopyWithImpl<SortChanged>(this, _$identity);

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
  const factory SortChanged(ActiveSort sort) = _$SortChanged;

  ActiveSort get sort;
  @JsonKey(ignore: true)
  $SortChangedCopyWith<SortChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterChangedCopyWith<$Res> {
  factory $FilterChangedCopyWith(
          FilterChanged value, $Res Function(FilterChanged) then) =
      _$FilterChangedCopyWithImpl<$Res>;
  $Res call({ActiveFilter filter});
}

/// @nodoc
class _$FilterChangedCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements $FilterChangedCopyWith<$Res> {
  _$FilterChangedCopyWithImpl(
      FilterChanged _value, $Res Function(FilterChanged) _then)
      : super(_value, (v) => _then(v as FilterChanged));

  @override
  FilterChanged get _value => super._value as FilterChanged;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(FilterChanged(
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
            other is FilterChanged &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  $FilterChangedCopyWith<FilterChanged> get copyWith =>
      _$FilterChangedCopyWithImpl<FilterChanged>(this, _$identity);

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
  const factory FilterChanged(ActiveFilter filter) = _$FilterChanged;

  ActiveFilter get filter;
  @JsonKey(ignore: true)
  $FilterChangedCopyWith<FilterChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateChangedCopyWith<$Res> {
  factory $DateChangedCopyWith(
          DateChanged value, $Res Function(DateChanged) then) =
      _$DateChangedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$DateChangedCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements $DateChangedCopyWith<$Res> {
  _$DateChangedCopyWithImpl(
      DateChanged _value, $Res Function(DateChanged) _then)
      : super(_value, (v) => _then(v as DateChanged));

  @override
  DateChanged get _value => super._value as DateChanged;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(DateChanged(
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
            other is DateChanged &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  $DateChangedCopyWith<DateChanged> get copyWith =>
      _$DateChangedCopyWithImpl<DateChanged>(this, _$identity);

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
  const factory DateChanged(DateTime date) = _$DateChanged;

  DateTime get date;
  @JsonKey(ignore: true)
  $DateChangedCopyWith<DateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilterStateTearOff {
  const _$FilterStateTearOff();

  FilterLoading filterLoading() {
    return const FilterLoading();
  }

  FilterChanging filterChanging(
      ActiveFilter activeFilter, ActiveSort activeSort) {
    return FilterChanging(
      activeFilter,
      activeSort,
    );
  }

  FilterLoaded filterLoaded(List<Transaction> transactions,
      ActiveFilter activeFilter, ActiveSort activeSort, DateTime date) {
    return FilterLoaded(
      transactions,
      activeFilter,
      activeSort,
      date,
    );
  }
}

/// @nodoc
const $FilterState = _$FilterStateTearOff();

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
abstract class $FilterLoadingCopyWith<$Res> {
  factory $FilterLoadingCopyWith(
          FilterLoading value, $Res Function(FilterLoading) then) =
      _$FilterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterLoadingCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements $FilterLoadingCopyWith<$Res> {
  _$FilterLoadingCopyWithImpl(
      FilterLoading _value, $Res Function(FilterLoading) _then)
      : super(_value, (v) => _then(v as FilterLoading));

  @override
  FilterLoading get _value => super._value as FilterLoading;
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
        (other.runtimeType == runtimeType && other is FilterLoading);
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
abstract class $FilterChangingCopyWith<$Res> {
  factory $FilterChangingCopyWith(
          FilterChanging value, $Res Function(FilterChanging) then) =
      _$FilterChangingCopyWithImpl<$Res>;
  $Res call({ActiveFilter activeFilter, ActiveSort activeSort});
}

/// @nodoc
class _$FilterChangingCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements $FilterChangingCopyWith<$Res> {
  _$FilterChangingCopyWithImpl(
      FilterChanging _value, $Res Function(FilterChanging) _then)
      : super(_value, (v) => _then(v as FilterChanging));

  @override
  FilterChanging get _value => super._value as FilterChanging;

  @override
  $Res call({
    Object? activeFilter = freezed,
    Object? activeSort = freezed,
  }) {
    return _then(FilterChanging(
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
            other is FilterChanging &&
            (identical(other.activeFilter, activeFilter) ||
                other.activeFilter == activeFilter) &&
            (identical(other.activeSort, activeSort) ||
                other.activeSort == activeSort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeFilter, activeSort);

  @JsonKey(ignore: true)
  @override
  $FilterChangingCopyWith<FilterChanging> get copyWith =>
      _$FilterChangingCopyWithImpl<FilterChanging>(this, _$identity);

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
      ActiveFilter activeFilter, ActiveSort activeSort) = _$FilterChanging;

  ActiveFilter get activeFilter;
  ActiveSort get activeSort;
  @JsonKey(ignore: true)
  $FilterChangingCopyWith<FilterChanging> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterLoadedCopyWith<$Res> {
  factory $FilterLoadedCopyWith(
          FilterLoaded value, $Res Function(FilterLoaded) then) =
      _$FilterLoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Transaction> transactions,
      ActiveFilter activeFilter,
      ActiveSort activeSort,
      DateTime date});
}

/// @nodoc
class _$FilterLoadedCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements $FilterLoadedCopyWith<$Res> {
  _$FilterLoadedCopyWithImpl(
      FilterLoaded _value, $Res Function(FilterLoaded) _then)
      : super(_value, (v) => _then(v as FilterLoaded));

  @override
  FilterLoaded get _value => super._value as FilterLoaded;

  @override
  $Res call({
    Object? transactions = freezed,
    Object? activeFilter = freezed,
    Object? activeSort = freezed,
    Object? date = freezed,
  }) {
    return _then(FilterLoaded(
      transactions == freezed
          ? _value.transactions
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
  const _$FilterLoaded(
      this.transactions, this.activeFilter, this.activeSort, this.date);

  @override
  final List<Transaction> transactions;
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
            other is FilterLoaded &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions) &&
            (identical(other.activeFilter, activeFilter) ||
                other.activeFilter == activeFilter) &&
            (identical(other.activeSort, activeSort) ||
                other.activeSort == activeSort) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transactions),
      activeFilter,
      activeSort,
      date);

  @JsonKey(ignore: true)
  @override
  $FilterLoadedCopyWith<FilterLoaded> get copyWith =>
      _$FilterLoadedCopyWithImpl<FilterLoaded>(this, _$identity);

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
      List<Transaction> transactions,
      ActiveFilter activeFilter,
      ActiveSort activeSort,
      DateTime date) = _$FilterLoaded;

  List<Transaction> get transactions;
  ActiveFilter get activeFilter;
  ActiveSort get activeSort;
  DateTime get date;
  @JsonKey(ignore: true)
  $FilterLoadedCopyWith<FilterLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
