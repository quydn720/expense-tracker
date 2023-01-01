// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TransactionEntity> transactions) loaded,
    required TResult Function() transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilter filter)
        transactionsViewFilterChanged,
    required TResult Function(TransactionEntity transaction)
        transactionOverviewTransactionDeleted,
    required TResult Function() transactionOverviewUndoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionEntity> transactions)? loaded,
    TResult? Function()? transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult? Function()? transactionOverviewUndoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionEntity> transactions)? loaded,
    TResult Function()? transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult Function()? transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loaded value) loaded,
    required TResult Function(TransactionsSubscriptionRequested value)
        transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilterChanged value)
        transactionsViewFilterChanged,
    required TResult Function(TransactionOverviewTransactionDeleted value)
        transactionOverviewTransactionDeleted,
    required TResult Function(TransactionOverviewUndoDeletionRequested value)
        transactionOverviewUndoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loaded value)? loaded,
    TResult? Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult? Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loaded value)? loaded,
    TResult Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TransactionEntity> transactions});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$Loaded(
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(final List<TransactionEntity> transactions)
      : _transactions = transactions;

  final List<TransactionEntity> _transactions;
  @override
  List<TransactionEntity> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'TransactionEvent.loaded(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TransactionEntity> transactions) loaded,
    required TResult Function() transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilter filter)
        transactionsViewFilterChanged,
    required TResult Function(TransactionEntity transaction)
        transactionOverviewTransactionDeleted,
    required TResult Function() transactionOverviewUndoDeletionRequested,
  }) {
    return loaded(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionEntity> transactions)? loaded,
    TResult? Function()? transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult? Function()? transactionOverviewUndoDeletionRequested,
  }) {
    return loaded?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionEntity> transactions)? loaded,
    TResult Function()? transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult Function()? transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loaded value) loaded,
    required TResult Function(TransactionsSubscriptionRequested value)
        transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilterChanged value)
        transactionsViewFilterChanged,
    required TResult Function(TransactionOverviewTransactionDeleted value)
        transactionOverviewTransactionDeleted,
    required TResult Function(TransactionOverviewUndoDeletionRequested value)
        transactionOverviewUndoDeletionRequested,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loaded value)? loaded,
    TResult? Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult? Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loaded value)? loaded,
    TResult Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements TransactionEvent {
  const factory Loaded(final List<TransactionEntity> transactions) = _$Loaded;

  List<TransactionEntity> get transactions;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionsSubscriptionRequestedCopyWith<$Res> {
  factory _$$TransactionsSubscriptionRequestedCopyWith(
          _$TransactionsSubscriptionRequested value,
          $Res Function(_$TransactionsSubscriptionRequested) then) =
      __$$TransactionsSubscriptionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionsSubscriptionRequestedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$TransactionsSubscriptionRequested>
    implements _$$TransactionsSubscriptionRequestedCopyWith<$Res> {
  __$$TransactionsSubscriptionRequestedCopyWithImpl(
      _$TransactionsSubscriptionRequested _value,
      $Res Function(_$TransactionsSubscriptionRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionsSubscriptionRequested
    implements TransactionsSubscriptionRequested {
  const _$TransactionsSubscriptionRequested();

  @override
  String toString() {
    return 'TransactionEvent.transactionsSubscriptionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsSubscriptionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TransactionEntity> transactions) loaded,
    required TResult Function() transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilter filter)
        transactionsViewFilterChanged,
    required TResult Function(TransactionEntity transaction)
        transactionOverviewTransactionDeleted,
    required TResult Function() transactionOverviewUndoDeletionRequested,
  }) {
    return transactionsSubscriptionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionEntity> transactions)? loaded,
    TResult? Function()? transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult? Function()? transactionOverviewUndoDeletionRequested,
  }) {
    return transactionsSubscriptionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionEntity> transactions)? loaded,
    TResult Function()? transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult Function()? transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) {
    if (transactionsSubscriptionRequested != null) {
      return transactionsSubscriptionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loaded value) loaded,
    required TResult Function(TransactionsSubscriptionRequested value)
        transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilterChanged value)
        transactionsViewFilterChanged,
    required TResult Function(TransactionOverviewTransactionDeleted value)
        transactionOverviewTransactionDeleted,
    required TResult Function(TransactionOverviewUndoDeletionRequested value)
        transactionOverviewUndoDeletionRequested,
  }) {
    return transactionsSubscriptionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loaded value)? loaded,
    TResult? Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult? Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
  }) {
    return transactionsSubscriptionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loaded value)? loaded,
    TResult Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) {
    if (transactionsSubscriptionRequested != null) {
      return transactionsSubscriptionRequested(this);
    }
    return orElse();
  }
}

abstract class TransactionsSubscriptionRequested implements TransactionEvent {
  const factory TransactionsSubscriptionRequested() =
      _$TransactionsSubscriptionRequested;
}

/// @nodoc
abstract class _$$TransactionsViewFilterChangedCopyWith<$Res> {
  factory _$$TransactionsViewFilterChangedCopyWith(
          _$TransactionsViewFilterChanged value,
          $Res Function(_$TransactionsViewFilterChanged) then) =
      __$$TransactionsViewFilterChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionsViewFilter filter});
}

/// @nodoc
class __$$TransactionsViewFilterChangedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$TransactionsViewFilterChanged>
    implements _$$TransactionsViewFilterChangedCopyWith<$Res> {
  __$$TransactionsViewFilterChangedCopyWithImpl(
      _$TransactionsViewFilterChanged _value,
      $Res Function(_$TransactionsViewFilterChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$TransactionsViewFilterChanged(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TransactionsViewFilter,
    ));
  }
}

/// @nodoc

class _$TransactionsViewFilterChanged implements TransactionsViewFilterChanged {
  const _$TransactionsViewFilterChanged(this.filter);

  @override
  final TransactionsViewFilter filter;

  @override
  String toString() {
    return 'TransactionEvent.transactionsViewFilterChanged(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsViewFilterChanged &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsViewFilterChangedCopyWith<_$TransactionsViewFilterChanged>
      get copyWith => __$$TransactionsViewFilterChangedCopyWithImpl<
          _$TransactionsViewFilterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TransactionEntity> transactions) loaded,
    required TResult Function() transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilter filter)
        transactionsViewFilterChanged,
    required TResult Function(TransactionEntity transaction)
        transactionOverviewTransactionDeleted,
    required TResult Function() transactionOverviewUndoDeletionRequested,
  }) {
    return transactionsViewFilterChanged(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionEntity> transactions)? loaded,
    TResult? Function()? transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult? Function()? transactionOverviewUndoDeletionRequested,
  }) {
    return transactionsViewFilterChanged?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionEntity> transactions)? loaded,
    TResult Function()? transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult Function()? transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) {
    if (transactionsViewFilterChanged != null) {
      return transactionsViewFilterChanged(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loaded value) loaded,
    required TResult Function(TransactionsSubscriptionRequested value)
        transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilterChanged value)
        transactionsViewFilterChanged,
    required TResult Function(TransactionOverviewTransactionDeleted value)
        transactionOverviewTransactionDeleted,
    required TResult Function(TransactionOverviewUndoDeletionRequested value)
        transactionOverviewUndoDeletionRequested,
  }) {
    return transactionsViewFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loaded value)? loaded,
    TResult? Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult? Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
  }) {
    return transactionsViewFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loaded value)? loaded,
    TResult Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) {
    if (transactionsViewFilterChanged != null) {
      return transactionsViewFilterChanged(this);
    }
    return orElse();
  }
}

abstract class TransactionsViewFilterChanged implements TransactionEvent {
  const factory TransactionsViewFilterChanged(
      final TransactionsViewFilter filter) = _$TransactionsViewFilterChanged;

  TransactionsViewFilter get filter;
  @JsonKey(ignore: true)
  _$$TransactionsViewFilterChangedCopyWith<_$TransactionsViewFilterChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionOverviewTransactionDeletedCopyWith<$Res> {
  factory _$$TransactionOverviewTransactionDeletedCopyWith(
          _$TransactionOverviewTransactionDeleted value,
          $Res Function(_$TransactionOverviewTransactionDeleted) then) =
      __$$TransactionOverviewTransactionDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionEntity transaction});

  $TransactionEntityCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$TransactionOverviewTransactionDeletedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$TransactionOverviewTransactionDeleted>
    implements _$$TransactionOverviewTransactionDeletedCopyWith<$Res> {
  __$$TransactionOverviewTransactionDeletedCopyWithImpl(
      _$TransactionOverviewTransactionDeleted _value,
      $Res Function(_$TransactionOverviewTransactionDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$TransactionOverviewTransactionDeleted(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionEntityCopyWith<$Res> get transaction {
    return $TransactionEntityCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc

class _$TransactionOverviewTransactionDeleted
    implements TransactionOverviewTransactionDeleted {
  const _$TransactionOverviewTransactionDeleted(this.transaction);

  @override
  final TransactionEntity transaction;

  @override
  String toString() {
    return 'TransactionEvent.transactionOverviewTransactionDeleted(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionOverviewTransactionDeleted &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionOverviewTransactionDeletedCopyWith<
          _$TransactionOverviewTransactionDeleted>
      get copyWith => __$$TransactionOverviewTransactionDeletedCopyWithImpl<
          _$TransactionOverviewTransactionDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TransactionEntity> transactions) loaded,
    required TResult Function() transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilter filter)
        transactionsViewFilterChanged,
    required TResult Function(TransactionEntity transaction)
        transactionOverviewTransactionDeleted,
    required TResult Function() transactionOverviewUndoDeletionRequested,
  }) {
    return transactionOverviewTransactionDeleted(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionEntity> transactions)? loaded,
    TResult? Function()? transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult? Function()? transactionOverviewUndoDeletionRequested,
  }) {
    return transactionOverviewTransactionDeleted?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionEntity> transactions)? loaded,
    TResult Function()? transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult Function()? transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) {
    if (transactionOverviewTransactionDeleted != null) {
      return transactionOverviewTransactionDeleted(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loaded value) loaded,
    required TResult Function(TransactionsSubscriptionRequested value)
        transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilterChanged value)
        transactionsViewFilterChanged,
    required TResult Function(TransactionOverviewTransactionDeleted value)
        transactionOverviewTransactionDeleted,
    required TResult Function(TransactionOverviewUndoDeletionRequested value)
        transactionOverviewUndoDeletionRequested,
  }) {
    return transactionOverviewTransactionDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loaded value)? loaded,
    TResult? Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult? Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
  }) {
    return transactionOverviewTransactionDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loaded value)? loaded,
    TResult Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) {
    if (transactionOverviewTransactionDeleted != null) {
      return transactionOverviewTransactionDeleted(this);
    }
    return orElse();
  }
}

abstract class TransactionOverviewTransactionDeleted
    implements TransactionEvent {
  const factory TransactionOverviewTransactionDeleted(
          final TransactionEntity transaction) =
      _$TransactionOverviewTransactionDeleted;

  TransactionEntity get transaction;
  @JsonKey(ignore: true)
  _$$TransactionOverviewTransactionDeletedCopyWith<
          _$TransactionOverviewTransactionDeleted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionOverviewUndoDeletionRequestedCopyWith<$Res> {
  factory _$$TransactionOverviewUndoDeletionRequestedCopyWith(
          _$TransactionOverviewUndoDeletionRequested value,
          $Res Function(_$TransactionOverviewUndoDeletionRequested) then) =
      __$$TransactionOverviewUndoDeletionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionOverviewUndoDeletionRequestedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$TransactionOverviewUndoDeletionRequested>
    implements _$$TransactionOverviewUndoDeletionRequestedCopyWith<$Res> {
  __$$TransactionOverviewUndoDeletionRequestedCopyWithImpl(
      _$TransactionOverviewUndoDeletionRequested _value,
      $Res Function(_$TransactionOverviewUndoDeletionRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionOverviewUndoDeletionRequested
    implements TransactionOverviewUndoDeletionRequested {
  const _$TransactionOverviewUndoDeletionRequested();

  @override
  String toString() {
    return 'TransactionEvent.transactionOverviewUndoDeletionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionOverviewUndoDeletionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TransactionEntity> transactions) loaded,
    required TResult Function() transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilter filter)
        transactionsViewFilterChanged,
    required TResult Function(TransactionEntity transaction)
        transactionOverviewTransactionDeleted,
    required TResult Function() transactionOverviewUndoDeletionRequested,
  }) {
    return transactionOverviewUndoDeletionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionEntity> transactions)? loaded,
    TResult? Function()? transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult? Function()? transactionOverviewUndoDeletionRequested,
  }) {
    return transactionOverviewUndoDeletionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionEntity> transactions)? loaded,
    TResult Function()? transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilter filter)?
        transactionsViewFilterChanged,
    TResult Function(TransactionEntity transaction)?
        transactionOverviewTransactionDeleted,
    TResult Function()? transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) {
    if (transactionOverviewUndoDeletionRequested != null) {
      return transactionOverviewUndoDeletionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loaded value) loaded,
    required TResult Function(TransactionsSubscriptionRequested value)
        transactionsSubscriptionRequested,
    required TResult Function(TransactionsViewFilterChanged value)
        transactionsViewFilterChanged,
    required TResult Function(TransactionOverviewTransactionDeleted value)
        transactionOverviewTransactionDeleted,
    required TResult Function(TransactionOverviewUndoDeletionRequested value)
        transactionOverviewUndoDeletionRequested,
  }) {
    return transactionOverviewUndoDeletionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loaded value)? loaded,
    TResult? Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult? Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult? Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult? Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
  }) {
    return transactionOverviewUndoDeletionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loaded value)? loaded,
    TResult Function(TransactionsSubscriptionRequested value)?
        transactionsSubscriptionRequested,
    TResult Function(TransactionsViewFilterChanged value)?
        transactionsViewFilterChanged,
    TResult Function(TransactionOverviewTransactionDeleted value)?
        transactionOverviewTransactionDeleted,
    TResult Function(TransactionOverviewUndoDeletionRequested value)?
        transactionOverviewUndoDeletionRequested,
    required TResult orElse(),
  }) {
    if (transactionOverviewUndoDeletionRequested != null) {
      return transactionOverviewUndoDeletionRequested(this);
    }
    return orElse();
  }
}

abstract class TransactionOverviewUndoDeletionRequested
    implements TransactionEvent {
  const factory TransactionOverviewUndoDeletionRequested() =
      _$TransactionOverviewUndoDeletionRequested;
}

/// @nodoc
mixin _$TransactionState {
  List<TransactionEntity> get transactions =>
      throw _privateConstructorUsedError;
  TransactionStatus get status => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  TransactionsViewFilter get filter => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  TransactionEntity? get lastDeletedTransaction =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
  @useResult
  $Res call(
      {List<TransactionEntity> transactions,
      TransactionStatus status,
      String? category,
      TransactionsViewFilter filter,
      String? sortBy,
      TransactionEntity? lastDeletedTransaction});

  $TransactionEntityCopyWith<$Res>? get lastDeletedTransaction;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? status = null,
    Object? category = freezed,
    Object? filter = null,
    Object? sortBy = freezed,
    Object? lastDeletedTransaction = freezed,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TransactionsViewFilter,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastDeletedTransaction: freezed == lastDeletedTransaction
          ? _value.lastDeletedTransaction
          : lastDeletedTransaction // ignore: cast_nullable_to_non_nullable
              as TransactionEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionEntityCopyWith<$Res>? get lastDeletedTransaction {
    if (_value.lastDeletedTransaction == null) {
      return null;
    }

    return $TransactionEntityCopyWith<$Res>(_value.lastDeletedTransaction!,
        (value) {
      return _then(_value.copyWith(lastDeletedTransaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionStateCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$_TransactionStateCopyWith(
          _$_TransactionState value, $Res Function(_$_TransactionState) then) =
      __$$_TransactionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TransactionEntity> transactions,
      TransactionStatus status,
      String? category,
      TransactionsViewFilter filter,
      String? sortBy,
      TransactionEntity? lastDeletedTransaction});

  @override
  $TransactionEntityCopyWith<$Res>? get lastDeletedTransaction;
}

/// @nodoc
class __$$_TransactionStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$_TransactionState>
    implements _$$_TransactionStateCopyWith<$Res> {
  __$$_TransactionStateCopyWithImpl(
      _$_TransactionState _value, $Res Function(_$_TransactionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? status = null,
    Object? category = freezed,
    Object? filter = null,
    Object? sortBy = freezed,
    Object? lastDeletedTransaction = freezed,
  }) {
    return _then(_$_TransactionState(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TransactionsViewFilter,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastDeletedTransaction: freezed == lastDeletedTransaction
          ? _value.lastDeletedTransaction
          : lastDeletedTransaction // ignore: cast_nullable_to_non_nullable
              as TransactionEntity?,
    ));
  }
}

/// @nodoc

class _$_TransactionState extends _TransactionState {
  const _$_TransactionState(
      {final List<TransactionEntity> transactions = const <TransactionEntity>[],
      this.status = TransactionStatus.initial,
      this.category,
      this.filter = TransactionsViewFilter.all,
      this.sortBy,
      this.lastDeletedTransaction})
      : _transactions = transactions,
        super._();

  final List<TransactionEntity> _transactions;
  @override
  @JsonKey()
  List<TransactionEntity> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey()
  final TransactionStatus status;
  @override
  final String? category;
  @override
  @JsonKey()
  final TransactionsViewFilter filter;
  @override
  final String? sortBy;
  @override
  final TransactionEntity? lastDeletedTransaction;

  @override
  String toString() {
    return 'TransactionState(transactions: $transactions, status: $status, category: $category, filter: $filter, sortBy: $sortBy, lastDeletedTransaction: $lastDeletedTransaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionState &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.lastDeletedTransaction, lastDeletedTransaction) ||
                other.lastDeletedTransaction == lastDeletedTransaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_transactions),
      status,
      category,
      filter,
      sortBy,
      lastDeletedTransaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionStateCopyWith<_$_TransactionState> get copyWith =>
      __$$_TransactionStateCopyWithImpl<_$_TransactionState>(this, _$identity);
}

abstract class _TransactionState extends TransactionState {
  const factory _TransactionState(
      {final List<TransactionEntity> transactions,
      final TransactionStatus status,
      final String? category,
      final TransactionsViewFilter filter,
      final String? sortBy,
      final TransactionEntity? lastDeletedTransaction}) = _$_TransactionState;
  const _TransactionState._() : super._();

  @override
  List<TransactionEntity> get transactions;
  @override
  TransactionStatus get status;
  @override
  String? get category;
  @override
  TransactionsViewFilter get filter;
  @override
  String? get sortBy;
  @override
  TransactionEntity? get lastDeletedTransaction;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionStateCopyWith<_$_TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
