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

  FilterChanged filterChanged(ActiveFilter filter, ActiveSort sort) {
    return FilterChanged(
      filter,
      sort,
    );
  }

  UpdateTransactions updateTransactions(List<Transaction> transactions) {
    return UpdateTransactions(
      transactions,
    );
  }
}

/// @nodoc
const $FilterEvent = _$FilterEventTearOff();

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActiveFilter filter, ActiveSort sort)
        filterChanged,
    required TResult Function(List<Transaction> transactions)
        updateTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActiveFilter filter, ActiveSort sort)? filterChanged,
    TResult Function(List<Transaction> transactions)? updateTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActiveFilter filter, ActiveSort sort)? filterChanged,
    TResult Function(List<Transaction> transactions)? updateTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(UpdateTransactions value) updateTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(UpdateTransactions value)? updateTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(UpdateTransactions value)? updateTransactions,
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
abstract class $FilterChangedCopyWith<$Res> {
  factory $FilterChangedCopyWith(
          FilterChanged value, $Res Function(FilterChanged) then) =
      _$FilterChangedCopyWithImpl<$Res>;
  $Res call({ActiveFilter filter, ActiveSort sort});
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
    Object? sort = freezed,
  }) {
    return _then(FilterChanged(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ActiveFilter,
      sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ActiveSort,
    ));
  }
}

/// @nodoc

class _$FilterChanged implements FilterChanged {
  const _$FilterChanged(this.filter, this.sort);

  @override
  final ActiveFilter filter;
  @override
  final ActiveSort sort;

  @override
  String toString() {
    return 'FilterEvent.filterChanged(filter: $filter, sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterChanged &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter, sort);

  @JsonKey(ignore: true)
  @override
  $FilterChangedCopyWith<FilterChanged> get copyWith =>
      _$FilterChangedCopyWithImpl<FilterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActiveFilter filter, ActiveSort sort)
        filterChanged,
    required TResult Function(List<Transaction> transactions)
        updateTransactions,
  }) {
    return filterChanged(filter, sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActiveFilter filter, ActiveSort sort)? filterChanged,
    TResult Function(List<Transaction> transactions)? updateTransactions,
  }) {
    return filterChanged?.call(filter, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActiveFilter filter, ActiveSort sort)? filterChanged,
    TResult Function(List<Transaction> transactions)? updateTransactions,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(filter, sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(UpdateTransactions value) updateTransactions,
  }) {
    return filterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(UpdateTransactions value)? updateTransactions,
  }) {
    return filterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(UpdateTransactions value)? updateTransactions,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(this);
    }
    return orElse();
  }
}

abstract class FilterChanged implements FilterEvent {
  const factory FilterChanged(ActiveFilter filter, ActiveSort sort) =
      _$FilterChanged;

  ActiveFilter get filter;
  ActiveSort get sort;
  @JsonKey(ignore: true)
  $FilterChangedCopyWith<FilterChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTransactionsCopyWith<$Res> {
  factory $UpdateTransactionsCopyWith(
          UpdateTransactions value, $Res Function(UpdateTransactions) then) =
      _$UpdateTransactionsCopyWithImpl<$Res>;
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class _$UpdateTransactionsCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements $UpdateTransactionsCopyWith<$Res> {
  _$UpdateTransactionsCopyWithImpl(
      UpdateTransactions _value, $Res Function(UpdateTransactions) _then)
      : super(_value, (v) => _then(v as UpdateTransactions));

  @override
  UpdateTransactions get _value => super._value as UpdateTransactions;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(UpdateTransactions(
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$UpdateTransactions implements UpdateTransactions {
  const _$UpdateTransactions(this.transactions);

  @override
  final List<Transaction> transactions;

  @override
  String toString() {
    return 'FilterEvent.updateTransactions(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateTransactions &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactions));

  @JsonKey(ignore: true)
  @override
  $UpdateTransactionsCopyWith<UpdateTransactions> get copyWith =>
      _$UpdateTransactionsCopyWithImpl<UpdateTransactions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActiveFilter filter, ActiveSort sort)
        filterChanged,
    required TResult Function(List<Transaction> transactions)
        updateTransactions,
  }) {
    return updateTransactions(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActiveFilter filter, ActiveSort sort)? filterChanged,
    TResult Function(List<Transaction> transactions)? updateTransactions,
  }) {
    return updateTransactions?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActiveFilter filter, ActiveSort sort)? filterChanged,
    TResult Function(List<Transaction> transactions)? updateTransactions,
    required TResult orElse(),
  }) {
    if (updateTransactions != null) {
      return updateTransactions(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(UpdateTransactions value) updateTransactions,
  }) {
    return updateTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(UpdateTransactions value)? updateTransactions,
  }) {
    return updateTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(UpdateTransactions value)? updateTransactions,
    required TResult orElse(),
  }) {
    if (updateTransactions != null) {
      return updateTransactions(this);
    }
    return orElse();
  }
}

abstract class UpdateTransactions implements FilterEvent {
  const factory UpdateTransactions(List<Transaction> transactions) =
      _$UpdateTransactions;

  List<Transaction> get transactions;
  @JsonKey(ignore: true)
  $UpdateTransactionsCopyWith<UpdateTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilterStateTearOff {
  const _$FilterStateTearOff();

  FilterLoading filterLoading() {
    return const FilterLoading();
  }

  FilterLoaded filterLoaded(List<Transaction> transactions,
      ActiveFilter activeFilter, ActiveSort activeSort) {
    return FilterLoaded(
      transactions,
      activeFilter,
      activeSort,
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
    required TResult Function(List<Transaction> transactions,
            ActiveFilter activeFilter, ActiveSort activeSort)
        filterLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort)?
        filterLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort)?
        filterLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterLoading value) filterLoading,
    required TResult Function(FilterLoaded value) filterLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterLoaded value)? filterLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
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
    required TResult Function(List<Transaction> transactions,
            ActiveFilter activeFilter, ActiveSort activeSort)
        filterLoaded,
  }) {
    return filterLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort)?
        filterLoaded,
  }) {
    return filterLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort)?
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
    required TResult Function(FilterLoaded value) filterLoaded,
  }) {
    return filterLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterLoaded value)? filterLoaded,
  }) {
    return filterLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
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
abstract class $FilterLoadedCopyWith<$Res> {
  factory $FilterLoadedCopyWith(
          FilterLoaded value, $Res Function(FilterLoaded) then) =
      _$FilterLoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Transaction> transactions,
      ActiveFilter activeFilter,
      ActiveSort activeSort});
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
    ));
  }
}

/// @nodoc

class _$FilterLoaded implements FilterLoaded {
  const _$FilterLoaded(this.transactions, this.activeFilter, this.activeSort);

  @override
  final List<Transaction> transactions;
  @override
  final ActiveFilter activeFilter;
  @override
  final ActiveSort activeSort;

  @override
  String toString() {
    return 'FilterState.filterLoaded(transactions: $transactions, activeFilter: $activeFilter, activeSort: $activeSort)';
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
                other.activeSort == activeSort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transactions),
      activeFilter,
      activeSort);

  @JsonKey(ignore: true)
  @override
  $FilterLoadedCopyWith<FilterLoaded> get copyWith =>
      _$FilterLoadedCopyWithImpl<FilterLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() filterLoading,
    required TResult Function(List<Transaction> transactions,
            ActiveFilter activeFilter, ActiveSort activeSort)
        filterLoaded,
  }) {
    return filterLoaded(transactions, activeFilter, activeSort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort)?
        filterLoaded,
  }) {
    return filterLoaded?.call(transactions, activeFilter, activeSort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterLoading,
    TResult Function(List<Transaction> transactions, ActiveFilter activeFilter,
            ActiveSort activeSort)?
        filterLoaded,
    required TResult orElse(),
  }) {
    if (filterLoaded != null) {
      return filterLoaded(transactions, activeFilter, activeSort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterLoading value) filterLoading,
    required TResult Function(FilterLoaded value) filterLoaded,
  }) {
    return filterLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
    TResult Function(FilterLoaded value)? filterLoaded,
  }) {
    return filterLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterLoading value)? filterLoading,
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
  const factory FilterLoaded(List<Transaction> transactions,
      ActiveFilter activeFilter, ActiveSort activeSort) = _$FilterLoaded;

  List<Transaction> get transactions;
  ActiveFilter get activeFilter;
  ActiveSort get activeSort;
  @JsonKey(ignore: true)
  $FilterLoadedCopyWith<FilterLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
