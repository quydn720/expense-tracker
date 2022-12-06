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
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(List<Transaction> transactions) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? failure,
    TResult? Function(List<Transaction> transactions)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<Transaction> transactions)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsInitial value) initial,
    required TResult Function(TransactionsLoading value) loading,
    required TResult Function(TransactionsFailure value) failure,
    required TResult Function(TransactionsLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsInitial value)? initial,
    TResult? Function(TransactionsLoading value)? loading,
    TResult? Function(TransactionsFailure value)? failure,
    TResult? Function(TransactionsLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsInitial value)? initial,
    TResult Function(TransactionsLoading value)? loading,
    TResult Function(TransactionsFailure value)? failure,
    TResult Function(TransactionsLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransactionsInitialCopyWith<$Res> {
  factory _$$TransactionsInitialCopyWith(_$TransactionsInitial value,
          $Res Function(_$TransactionsInitial) then) =
      __$$TransactionsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionsInitialCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionsInitial>
    implements _$$TransactionsInitialCopyWith<$Res> {
  __$$TransactionsInitialCopyWithImpl(
      _$TransactionsInitial _value, $Res Function(_$TransactionsInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionsInitial implements TransactionsInitial {
  const _$TransactionsInitial();

  @override
  String toString() {
    return 'TransactionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(List<Transaction> transactions) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? failure,
    TResult? Function(List<Transaction> transactions)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<Transaction> transactions)? loaded,
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
    required TResult Function(TransactionsInitial value) initial,
    required TResult Function(TransactionsLoading value) loading,
    required TResult Function(TransactionsFailure value) failure,
    required TResult Function(TransactionsLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsInitial value)? initial,
    TResult? Function(TransactionsLoading value)? loading,
    TResult? Function(TransactionsFailure value)? failure,
    TResult? Function(TransactionsLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsInitial value)? initial,
    TResult Function(TransactionsLoading value)? loading,
    TResult Function(TransactionsFailure value)? failure,
    TResult Function(TransactionsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TransactionsInitial implements TransactionState {
  const factory TransactionsInitial() = _$TransactionsInitial;
}

/// @nodoc
abstract class _$$TransactionsLoadingCopyWith<$Res> {
  factory _$$TransactionsLoadingCopyWith(_$TransactionsLoading value,
          $Res Function(_$TransactionsLoading) then) =
      __$$TransactionsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionsLoadingCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionsLoading>
    implements _$$TransactionsLoadingCopyWith<$Res> {
  __$$TransactionsLoadingCopyWithImpl(
      _$TransactionsLoading _value, $Res Function(_$TransactionsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionsLoading implements TransactionsLoading {
  const _$TransactionsLoading();

  @override
  String toString() {
    return 'TransactionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(List<Transaction> transactions) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? failure,
    TResult? Function(List<Transaction> transactions)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<Transaction> transactions)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsInitial value) initial,
    required TResult Function(TransactionsLoading value) loading,
    required TResult Function(TransactionsFailure value) failure,
    required TResult Function(TransactionsLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsInitial value)? initial,
    TResult? Function(TransactionsLoading value)? loading,
    TResult? Function(TransactionsFailure value)? failure,
    TResult? Function(TransactionsLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsInitial value)? initial,
    TResult Function(TransactionsLoading value)? loading,
    TResult Function(TransactionsFailure value)? failure,
    TResult Function(TransactionsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransactionsLoading implements TransactionState {
  const factory TransactionsLoading() = _$TransactionsLoading;
}

/// @nodoc
abstract class _$$TransactionsFailureCopyWith<$Res> {
  factory _$$TransactionsFailureCopyWith(_$TransactionsFailure value,
          $Res Function(_$TransactionsFailure) then) =
      __$$TransactionsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionsFailureCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionsFailure>
    implements _$$TransactionsFailureCopyWith<$Res> {
  __$$TransactionsFailureCopyWithImpl(
      _$TransactionsFailure _value, $Res Function(_$TransactionsFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionsFailure implements TransactionsFailure {
  const _$TransactionsFailure();

  @override
  String toString() {
    return 'TransactionState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionsFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(List<Transaction> transactions) loaded,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? failure,
    TResult? Function(List<Transaction> transactions)? loaded,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<Transaction> transactions)? loaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsInitial value) initial,
    required TResult Function(TransactionsLoading value) loading,
    required TResult Function(TransactionsFailure value) failure,
    required TResult Function(TransactionsLoaded value) loaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsInitial value)? initial,
    TResult? Function(TransactionsLoading value)? loading,
    TResult? Function(TransactionsFailure value)? failure,
    TResult? Function(TransactionsLoaded value)? loaded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsInitial value)? initial,
    TResult Function(TransactionsLoading value)? loading,
    TResult Function(TransactionsFailure value)? failure,
    TResult Function(TransactionsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class TransactionsFailure implements TransactionState {
  const factory TransactionsFailure() = _$TransactionsFailure;
}

/// @nodoc
abstract class _$$TransactionsLoadedCopyWith<$Res> {
  factory _$$TransactionsLoadedCopyWith(_$TransactionsLoaded value,
          $Res Function(_$TransactionsLoaded) then) =
      __$$TransactionsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class __$$TransactionsLoadedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionsLoaded>
    implements _$$TransactionsLoadedCopyWith<$Res> {
  __$$TransactionsLoadedCopyWithImpl(
      _$TransactionsLoaded _value, $Res Function(_$TransactionsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$TransactionsLoaded(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$TransactionsLoaded implements TransactionsLoaded {
  const _$TransactionsLoaded({required final List<Transaction> transactions})
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'TransactionState.loaded(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsLoaded &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsLoadedCopyWith<_$TransactionsLoaded> get copyWith =>
      __$$TransactionsLoadedCopyWithImpl<_$TransactionsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(List<Transaction> transactions) loaded,
  }) {
    return loaded(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? failure,
    TResult? Function(List<Transaction> transactions)? loaded,
  }) {
    return loaded?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(List<Transaction> transactions)? loaded,
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
    required TResult Function(TransactionsInitial value) initial,
    required TResult Function(TransactionsLoading value) loading,
    required TResult Function(TransactionsFailure value) failure,
    required TResult Function(TransactionsLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsInitial value)? initial,
    TResult? Function(TransactionsLoading value)? loading,
    TResult? Function(TransactionsFailure value)? failure,
    TResult? Function(TransactionsLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsInitial value)? initial,
    TResult Function(TransactionsLoading value)? loading,
    TResult Function(TransactionsFailure value)? failure,
    TResult Function(TransactionsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TransactionsLoaded implements TransactionState {
  const factory TransactionsLoaded(
      {required final List<Transaction> transactions}) = _$TransactionsLoaded;

  List<Transaction> get transactions;
  @JsonKey(ignore: true)
  _$$TransactionsLoadedCopyWith<_$TransactionsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
