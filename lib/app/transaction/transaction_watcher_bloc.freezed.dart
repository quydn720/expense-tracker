// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionWatcherEventTearOff {
  const _$TransactionWatcherEventTearOff();

  _Started started() {
    return const _Started();
  }

  WatchAll watchAll() {
    return const WatchAll();
  }

  TransactionsReceived transactionsReceived(
      Either<TransactionFailure, List<Transaction>> failureOrTransactions) {
    return TransactionsReceived(
      failureOrTransactions,
    );
  }
}

/// @nodoc
const $TransactionWatcherEvent = _$TransactionWatcherEventTearOff();

/// @nodoc
mixin _$TransactionWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() watchAll,
    required TResult Function(
            Either<TransactionFailure, List<Transaction>> failureOrTransactions)
        transactionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchAll,
    TResult Function(
            Either<TransactionFailure, List<Transaction>>
                failureOrTransactions)?
        transactionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchAll,
    TResult Function(
            Either<TransactionFailure, List<Transaction>>
                failureOrTransactions)?
        transactionsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(WatchAll value) watchAll,
    required TResult Function(TransactionsReceived value) transactionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WatchAll value)? watchAll,
    TResult Function(TransactionsReceived value)? transactionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WatchAll value)? watchAll,
    TResult Function(TransactionsReceived value)? transactionsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionWatcherEventCopyWith<$Res> {
  factory $TransactionWatcherEventCopyWith(TransactionWatcherEvent value,
          $Res Function(TransactionWatcherEvent) then) =
      _$TransactionWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionWatcherEventCopyWithImpl<$Res>
    implements $TransactionWatcherEventCopyWith<$Res> {
  _$TransactionWatcherEventCopyWithImpl(this._value, this._then);

  final TransactionWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionWatcherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TransactionWatcherEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() watchAll,
    required TResult Function(
            Either<TransactionFailure, List<Transaction>> failureOrTransactions)
        transactionsReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchAll,
    TResult Function(
            Either<TransactionFailure, List<Transaction>>
                failureOrTransactions)?
        transactionsReceived,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchAll,
    TResult Function(
            Either<TransactionFailure, List<Transaction>>
                failureOrTransactions)?
        transactionsReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(WatchAll value) watchAll,
    required TResult Function(TransactionsReceived value) transactionsReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WatchAll value)? watchAll,
    TResult Function(TransactionsReceived value)? transactionsReceived,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WatchAll value)? watchAll,
    TResult Function(TransactionsReceived value)? transactionsReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TransactionWatcherEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $WatchAllCopyWith<$Res> {
  factory $WatchAllCopyWith(WatchAll value, $Res Function(WatchAll) then) =
      _$WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAllCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res>
    implements $WatchAllCopyWith<$Res> {
  _$WatchAllCopyWithImpl(WatchAll _value, $Res Function(WatchAll) _then)
      : super(_value, (v) => _then(v as WatchAll));

  @override
  WatchAll get _value => super._value as WatchAll;
}

/// @nodoc

class _$WatchAll implements WatchAll {
  const _$WatchAll();

  @override
  String toString() {
    return 'TransactionWatcherEvent.watchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() watchAll,
    required TResult Function(
            Either<TransactionFailure, List<Transaction>> failureOrTransactions)
        transactionsReceived,
  }) {
    return watchAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchAll,
    TResult Function(
            Either<TransactionFailure, List<Transaction>>
                failureOrTransactions)?
        transactionsReceived,
  }) {
    return watchAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchAll,
    TResult Function(
            Either<TransactionFailure, List<Transaction>>
                failureOrTransactions)?
        transactionsReceived,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(WatchAll value) watchAll,
    required TResult Function(TransactionsReceived value) transactionsReceived,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WatchAll value)? watchAll,
    TResult Function(TransactionsReceived value)? transactionsReceived,
  }) {
    return watchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WatchAll value)? watchAll,
    TResult Function(TransactionsReceived value)? transactionsReceived,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class WatchAll implements TransactionWatcherEvent {
  const factory WatchAll() = _$WatchAll;
}

/// @nodoc
abstract class $TransactionsReceivedCopyWith<$Res> {
  factory $TransactionsReceivedCopyWith(TransactionsReceived value,
          $Res Function(TransactionsReceived) then) =
      _$TransactionsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<TransactionFailure, List<Transaction>> failureOrTransactions});
}

/// @nodoc
class _$TransactionsReceivedCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res>
    implements $TransactionsReceivedCopyWith<$Res> {
  _$TransactionsReceivedCopyWithImpl(
      TransactionsReceived _value, $Res Function(TransactionsReceived) _then)
      : super(_value, (v) => _then(v as TransactionsReceived));

  @override
  TransactionsReceived get _value => super._value as TransactionsReceived;

  @override
  $Res call({
    Object? failureOrTransactions = freezed,
  }) {
    return _then(TransactionsReceived(
      failureOrTransactions == freezed
          ? _value.failureOrTransactions
          : failureOrTransactions // ignore: cast_nullable_to_non_nullable
              as Either<TransactionFailure, List<Transaction>>,
    ));
  }
}

/// @nodoc

class _$TransactionsReceived implements TransactionsReceived {
  const _$TransactionsReceived(this.failureOrTransactions);

  @override
  final Either<TransactionFailure, List<Transaction>> failureOrTransactions;

  @override
  String toString() {
    return 'TransactionWatcherEvent.transactionsReceived(failureOrTransactions: $failureOrTransactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionsReceived &&
            (identical(other.failureOrTransactions, failureOrTransactions) ||
                other.failureOrTransactions == failureOrTransactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrTransactions);

  @JsonKey(ignore: true)
  @override
  $TransactionsReceivedCopyWith<TransactionsReceived> get copyWith =>
      _$TransactionsReceivedCopyWithImpl<TransactionsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() watchAll,
    required TResult Function(
            Either<TransactionFailure, List<Transaction>> failureOrTransactions)
        transactionsReceived,
  }) {
    return transactionsReceived(failureOrTransactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchAll,
    TResult Function(
            Either<TransactionFailure, List<Transaction>>
                failureOrTransactions)?
        transactionsReceived,
  }) {
    return transactionsReceived?.call(failureOrTransactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? watchAll,
    TResult Function(
            Either<TransactionFailure, List<Transaction>>
                failureOrTransactions)?
        transactionsReceived,
    required TResult orElse(),
  }) {
    if (transactionsReceived != null) {
      return transactionsReceived(failureOrTransactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(WatchAll value) watchAll,
    required TResult Function(TransactionsReceived value) transactionsReceived,
  }) {
    return transactionsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WatchAll value)? watchAll,
    TResult Function(TransactionsReceived value)? transactionsReceived,
  }) {
    return transactionsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WatchAll value)? watchAll,
    TResult Function(TransactionsReceived value)? transactionsReceived,
    required TResult orElse(),
  }) {
    if (transactionsReceived != null) {
      return transactionsReceived(this);
    }
    return orElse();
  }
}

abstract class TransactionsReceived implements TransactionWatcherEvent {
  const factory TransactionsReceived(
          Either<TransactionFailure, List<Transaction>> failureOrTransactions) =
      _$TransactionsReceived;

  Either<TransactionFailure, List<Transaction>> get failureOrTransactions;
  @JsonKey(ignore: true)
  $TransactionsReceivedCopyWith<TransactionsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TransactionWatcherStateTearOff {
  const _$TransactionWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  LoadingProgress loadingProgress() {
    return const LoadingProgress();
  }

  LoadSuccess loadSuccess(List<Transaction> transactions) {
    return LoadSuccess(
      transactions,
    );
  }

  LoadFailure loadFailure(TransactionFailure failure) {
    return LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $TransactionWatcherState = _$TransactionWatcherStateTearOff();

/// @nodoc
mixin _$TransactionWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(List<Transaction> transactions) loadSuccess,
    required TResult Function(TransactionFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Transaction> transactions)? loadSuccess,
    TResult Function(TransactionFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Transaction> transactions)? loadSuccess,
    TResult Function(TransactionFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingProgress value) loadingProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionWatcherStateCopyWith<$Res> {
  factory $TransactionWatcherStateCopyWith(TransactionWatcherState value,
          $Res Function(TransactionWatcherState) then) =
      _$TransactionWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionWatcherStateCopyWithImpl<$Res>
    implements $TransactionWatcherStateCopyWith<$Res> {
  _$TransactionWatcherStateCopyWithImpl(this._value, this._then);

  final TransactionWatcherState _value;
  // ignore: unused_field
  final $Res Function(TransactionWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$TransactionWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TransactionWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(List<Transaction> transactions) loadSuccess,
    required TResult Function(TransactionFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Transaction> transactions)? loadSuccess,
    TResult Function(TransactionFailure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Transaction> transactions)? loadSuccess,
    TResult Function(TransactionFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingProgress value) loadingProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadingProgressCopyWith<$Res> {
  factory $LoadingProgressCopyWith(
          LoadingProgress value, $Res Function(LoadingProgress) then) =
      _$LoadingProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingProgressCopyWithImpl<$Res>
    extends _$TransactionWatcherStateCopyWithImpl<$Res>
    implements $LoadingProgressCopyWith<$Res> {
  _$LoadingProgressCopyWithImpl(
      LoadingProgress _value, $Res Function(LoadingProgress) _then)
      : super(_value, (v) => _then(v as LoadingProgress));

  @override
  LoadingProgress get _value => super._value as LoadingProgress;
}

/// @nodoc

class _$LoadingProgress implements LoadingProgress {
  const _$LoadingProgress();

  @override
  String toString() {
    return 'TransactionWatcherState.loadingProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(List<Transaction> transactions) loadSuccess,
    required TResult Function(TransactionFailure failure) loadFailure,
  }) {
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Transaction> transactions)? loadSuccess,
    TResult Function(TransactionFailure failure)? loadFailure,
  }) {
    return loadingProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Transaction> transactions)? loadSuccess,
    TResult Function(TransactionFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingProgress value) loadingProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadingProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadingProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress(this);
    }
    return orElse();
  }
}

abstract class LoadingProgress implements TransactionWatcherState {
  const factory LoadingProgress() = _$LoadingProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$TransactionWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(LoadSuccess(
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.transactions);

  @override
  final List<Transaction> transactions;

  @override
  String toString() {
    return 'TransactionWatcherState.loadSuccess(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactions));

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(List<Transaction> transactions) loadSuccess,
    required TResult Function(TransactionFailure failure) loadFailure,
  }) {
    return loadSuccess(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Transaction> transactions)? loadSuccess,
    TResult Function(TransactionFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Transaction> transactions)? loadSuccess,
    TResult Function(TransactionFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingProgress value) loadingProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements TransactionWatcherState {
  const factory LoadSuccess(List<Transaction> transactions) = _$LoadSuccess;

  List<Transaction> get transactions;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({TransactionFailure failure});

  $TransactionFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$TransactionWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as TransactionFailure,
    ));
  }

  @override
  $TransactionFailureCopyWith<$Res> get failure {
    return $TransactionFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.failure);

  @override
  final TransactionFailure failure;

  @override
  String toString() {
    return 'TransactionWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(List<Transaction> transactions) loadSuccess,
    required TResult Function(TransactionFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Transaction> transactions)? loadSuccess,
    TResult Function(TransactionFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Transaction> transactions)? loadSuccess,
    TResult Function(TransactionFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingProgress value) loadingProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingProgress value)? loadingProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements TransactionWatcherState {
  const factory LoadFailure(TransactionFailure failure) = _$LoadFailure;

  TransactionFailure get failure;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
