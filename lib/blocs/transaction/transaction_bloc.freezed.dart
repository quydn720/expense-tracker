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
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) addTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(Transaction updatedTransaction) updateTransaction,
    required TResult Function(List<Transaction> transactions)
        transactionUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactions value) loadTransactions,
    required TResult Function(AddTransactions value) addTransaction,
    required TResult Function(DeleteTransactions value) deleteTransaction,
    required TResult Function(UpdateTransactions value) updateTransaction,
    required TResult Function(TransactionUpdated value) transactionUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  final TransactionEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionEvent) _then;
}

/// @nodoc
abstract class _$$LoadTransactionsCopyWith<$Res> {
  factory _$$LoadTransactionsCopyWith(
          _$LoadTransactions value, $Res Function(_$LoadTransactions) then) =
      __$$LoadTransactionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTransactionsCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$LoadTransactionsCopyWith<$Res> {
  __$$LoadTransactionsCopyWithImpl(
      _$LoadTransactions _value, $Res Function(_$LoadTransactions) _then)
      : super(_value, (v) => _then(v as _$LoadTransactions));

  @override
  _$LoadTransactions get _value => super._value as _$LoadTransactions;
}

/// @nodoc

class _$LoadTransactions implements LoadTransactions {
  const _$LoadTransactions();

  @override
  String toString() {
    return 'TransactionEvent.loadTransactions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTransactions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) addTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(Transaction updatedTransaction) updateTransaction,
    required TResult Function(List<Transaction> transactions)
        transactionUpdated,
  }) {
    return loadTransactions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
  }) {
    return loadTransactions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactions value) loadTransactions,
    required TResult Function(AddTransactions value) addTransaction,
    required TResult Function(DeleteTransactions value) deleteTransaction,
    required TResult Function(UpdateTransactions value) updateTransaction,
    required TResult Function(TransactionUpdated value) transactionUpdated,
  }) {
    return loadTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
  }) {
    return loadTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions(this);
    }
    return orElse();
  }
}

abstract class LoadTransactions implements TransactionEvent {
  const factory LoadTransactions() = _$LoadTransactions;
}

/// @nodoc
abstract class _$$AddTransactionsCopyWith<$Res> {
  factory _$$AddTransactionsCopyWith(
          _$AddTransactions value, $Res Function(_$AddTransactions) then) =
      __$$AddTransactionsCopyWithImpl<$Res>;
  $Res call({Transaction transaction});
}

/// @nodoc
class __$$AddTransactionsCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$AddTransactionsCopyWith<$Res> {
  __$$AddTransactionsCopyWithImpl(
      _$AddTransactions _value, $Res Function(_$AddTransactions) _then)
      : super(_value, (v) => _then(v as _$AddTransactions));

  @override
  _$AddTransactions get _value => super._value as _$AddTransactions;

  @override
  $Res call({
    Object? transaction = freezed,
  }) {
    return _then(_$AddTransactions(
      transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc

class _$AddTransactions implements AddTransactions {
  const _$AddTransactions(this.transaction);

  @override
  final Transaction transaction;

  @override
  String toString() {
    return 'TransactionEvent.addTransaction(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactions &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transaction));

  @JsonKey(ignore: true)
  @override
  _$$AddTransactionsCopyWith<_$AddTransactions> get copyWith =>
      __$$AddTransactionsCopyWithImpl<_$AddTransactions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) addTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(Transaction updatedTransaction) updateTransaction,
    required TResult Function(List<Transaction> transactions)
        transactionUpdated,
  }) {
    return addTransaction(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
  }) {
    return addTransaction?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactions value) loadTransactions,
    required TResult Function(AddTransactions value) addTransaction,
    required TResult Function(DeleteTransactions value) deleteTransaction,
    required TResult Function(UpdateTransactions value) updateTransaction,
    required TResult Function(TransactionUpdated value) transactionUpdated,
  }) {
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
  }) {
    return addTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class AddTransactions implements TransactionEvent {
  const factory AddTransactions(final Transaction transaction) =
      _$AddTransactions;

  Transaction get transaction => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddTransactionsCopyWith<_$AddTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTransactionsCopyWith<$Res> {
  factory _$$DeleteTransactionsCopyWith(_$DeleteTransactions value,
          $Res Function(_$DeleteTransactions) then) =
      __$$DeleteTransactionsCopyWithImpl<$Res>;
  $Res call({Transaction transaction});
}

/// @nodoc
class __$$DeleteTransactionsCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$DeleteTransactionsCopyWith<$Res> {
  __$$DeleteTransactionsCopyWithImpl(
      _$DeleteTransactions _value, $Res Function(_$DeleteTransactions) _then)
      : super(_value, (v) => _then(v as _$DeleteTransactions));

  @override
  _$DeleteTransactions get _value => super._value as _$DeleteTransactions;

  @override
  $Res call({
    Object? transaction = freezed,
  }) {
    return _then(_$DeleteTransactions(
      transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc

class _$DeleteTransactions implements DeleteTransactions {
  const _$DeleteTransactions(this.transaction);

  @override
  final Transaction transaction;

  @override
  String toString() {
    return 'TransactionEvent.deleteTransaction(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTransactions &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transaction));

  @JsonKey(ignore: true)
  @override
  _$$DeleteTransactionsCopyWith<_$DeleteTransactions> get copyWith =>
      __$$DeleteTransactionsCopyWithImpl<_$DeleteTransactions>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) addTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(Transaction updatedTransaction) updateTransaction,
    required TResult Function(List<Transaction> transactions)
        transactionUpdated,
  }) {
    return deleteTransaction(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
  }) {
    return deleteTransaction?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactions value) loadTransactions,
    required TResult Function(AddTransactions value) addTransaction,
    required TResult Function(DeleteTransactions value) deleteTransaction,
    required TResult Function(UpdateTransactions value) updateTransaction,
    required TResult Function(TransactionUpdated value) transactionUpdated,
  }) {
    return deleteTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
  }) {
    return deleteTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(this);
    }
    return orElse();
  }
}

abstract class DeleteTransactions implements TransactionEvent {
  const factory DeleteTransactions(final Transaction transaction) =
      _$DeleteTransactions;

  Transaction get transaction => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteTransactionsCopyWith<_$DeleteTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransactionsCopyWith<$Res> {
  factory _$$UpdateTransactionsCopyWith(_$UpdateTransactions value,
          $Res Function(_$UpdateTransactions) then) =
      __$$UpdateTransactionsCopyWithImpl<$Res>;
  $Res call({Transaction updatedTransaction});
}

/// @nodoc
class __$$UpdateTransactionsCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$UpdateTransactionsCopyWith<$Res> {
  __$$UpdateTransactionsCopyWithImpl(
      _$UpdateTransactions _value, $Res Function(_$UpdateTransactions) _then)
      : super(_value, (v) => _then(v as _$UpdateTransactions));

  @override
  _$UpdateTransactions get _value => super._value as _$UpdateTransactions;

  @override
  $Res call({
    Object? updatedTransaction = freezed,
  }) {
    return _then(_$UpdateTransactions(
      updatedTransaction == freezed
          ? _value.updatedTransaction
          : updatedTransaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc

class _$UpdateTransactions implements UpdateTransactions {
  const _$UpdateTransactions(this.updatedTransaction);

  @override
  final Transaction updatedTransaction;

  @override
  String toString() {
    return 'TransactionEvent.updateTransaction(updatedTransaction: $updatedTransaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactions &&
            const DeepCollectionEquality()
                .equals(other.updatedTransaction, updatedTransaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updatedTransaction));

  @JsonKey(ignore: true)
  @override
  _$$UpdateTransactionsCopyWith<_$UpdateTransactions> get copyWith =>
      __$$UpdateTransactionsCopyWithImpl<_$UpdateTransactions>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) addTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(Transaction updatedTransaction) updateTransaction,
    required TResult Function(List<Transaction> transactions)
        transactionUpdated,
  }) {
    return updateTransaction(updatedTransaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
  }) {
    return updateTransaction?.call(updatedTransaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(updatedTransaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactions value) loadTransactions,
    required TResult Function(AddTransactions value) addTransaction,
    required TResult Function(DeleteTransactions value) deleteTransaction,
    required TResult Function(UpdateTransactions value) updateTransaction,
    required TResult Function(TransactionUpdated value) transactionUpdated,
  }) {
    return updateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
  }) {
    return updateTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(this);
    }
    return orElse();
  }
}

abstract class UpdateTransactions implements TransactionEvent {
  const factory UpdateTransactions(final Transaction updatedTransaction) =
      _$UpdateTransactions;

  Transaction get updatedTransaction => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateTransactionsCopyWith<_$UpdateTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionUpdatedCopyWith<$Res> {
  factory _$$TransactionUpdatedCopyWith(_$TransactionUpdated value,
          $Res Function(_$TransactionUpdated) then) =
      __$$TransactionUpdatedCopyWithImpl<$Res>;
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class __$$TransactionUpdatedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$TransactionUpdatedCopyWith<$Res> {
  __$$TransactionUpdatedCopyWithImpl(
      _$TransactionUpdated _value, $Res Function(_$TransactionUpdated) _then)
      : super(_value, (v) => _then(v as _$TransactionUpdated));

  @override
  _$TransactionUpdated get _value => super._value as _$TransactionUpdated;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(_$TransactionUpdated(
      transactions == freezed
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$TransactionUpdated implements TransactionUpdated {
  const _$TransactionUpdated(final List<Transaction> transactions)
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'TransactionEvent.transactionUpdated(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionUpdated &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  _$$TransactionUpdatedCopyWith<_$TransactionUpdated> get copyWith =>
      __$$TransactionUpdatedCopyWithImpl<_$TransactionUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) addTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(Transaction updatedTransaction) updateTransaction,
    required TResult Function(List<Transaction> transactions)
        transactionUpdated,
  }) {
    return transactionUpdated(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
  }) {
    return transactionUpdated?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? addTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(Transaction updatedTransaction)? updateTransaction,
    TResult Function(List<Transaction> transactions)? transactionUpdated,
    required TResult orElse(),
  }) {
    if (transactionUpdated != null) {
      return transactionUpdated(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactions value) loadTransactions,
    required TResult Function(AddTransactions value) addTransaction,
    required TResult Function(DeleteTransactions value) deleteTransaction,
    required TResult Function(UpdateTransactions value) updateTransaction,
    required TResult Function(TransactionUpdated value) transactionUpdated,
  }) {
    return transactionUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
  }) {
    return transactionUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(AddTransactions value)? addTransaction,
    TResult Function(DeleteTransactions value)? deleteTransaction,
    TResult Function(UpdateTransactions value)? updateTransaction,
    TResult Function(TransactionUpdated value)? transactionUpdated,
    required TResult orElse(),
  }) {
    if (transactionUpdated != null) {
      return transactionUpdated(this);
    }
    return orElse();
  }
}

abstract class TransactionUpdated implements TransactionEvent {
  const factory TransactionUpdated(final List<Transaction> transactions) =
      _$TransactionUpdated;

  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TransactionUpdatedCopyWith<_$TransactionUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionSuccess,
    required TResult Function() transactionLoading,
    required TResult Function() transactionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionSuccess,
    TResult Function()? transactionLoading,
    TResult Function()? transactionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionSuccess,
    TResult Function()? transactionLoading,
    TResult Function()? transactionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionLoaded value) transactionSuccess,
    required TResult Function(TransactionLoading value) transactionLoading,
    required TResult Function(TransactionError value) transactionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionLoaded value)? transactionSuccess,
    TResult Function(TransactionLoading value)? transactionLoading,
    TResult Function(TransactionError value)? transactionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionLoaded value)? transactionSuccess,
    TResult Function(TransactionLoading value)? transactionLoading,
    TResult Function(TransactionError value)? transactionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;
}

/// @nodoc
abstract class _$$TransactionLoadedCopyWith<$Res> {
  factory _$$TransactionLoadedCopyWith(
          _$TransactionLoaded value, $Res Function(_$TransactionLoaded) then) =
      __$$TransactionLoadedCopyWithImpl<$Res>;
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class __$$TransactionLoadedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$$TransactionLoadedCopyWith<$Res> {
  __$$TransactionLoadedCopyWithImpl(
      _$TransactionLoaded _value, $Res Function(_$TransactionLoaded) _then)
      : super(_value, (v) => _then(v as _$TransactionLoaded));

  @override
  _$TransactionLoaded get _value => super._value as _$TransactionLoaded;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(_$TransactionLoaded(
      transactions == freezed
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$TransactionLoaded implements TransactionLoaded {
  const _$TransactionLoaded(final List<Transaction> transactions)
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'TransactionState.transactionSuccess(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionLoaded &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  _$$TransactionLoadedCopyWith<_$TransactionLoaded> get copyWith =>
      __$$TransactionLoadedCopyWithImpl<_$TransactionLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionSuccess,
    required TResult Function() transactionLoading,
    required TResult Function() transactionError,
  }) {
    return transactionSuccess(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionSuccess,
    TResult Function()? transactionLoading,
    TResult Function()? transactionError,
  }) {
    return transactionSuccess?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionSuccess,
    TResult Function()? transactionLoading,
    TResult Function()? transactionError,
    required TResult orElse(),
  }) {
    if (transactionSuccess != null) {
      return transactionSuccess(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionLoaded value) transactionSuccess,
    required TResult Function(TransactionLoading value) transactionLoading,
    required TResult Function(TransactionError value) transactionError,
  }) {
    return transactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionLoaded value)? transactionSuccess,
    TResult Function(TransactionLoading value)? transactionLoading,
    TResult Function(TransactionError value)? transactionError,
  }) {
    return transactionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionLoaded value)? transactionSuccess,
    TResult Function(TransactionLoading value)? transactionLoading,
    TResult Function(TransactionError value)? transactionError,
    required TResult orElse(),
  }) {
    if (transactionSuccess != null) {
      return transactionSuccess(this);
    }
    return orElse();
  }
}

abstract class TransactionLoaded implements TransactionState {
  const factory TransactionLoaded(final List<Transaction> transactions) =
      _$TransactionLoaded;

  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TransactionLoadedCopyWith<_$TransactionLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionLoadingCopyWith<$Res> {
  factory _$$TransactionLoadingCopyWith(_$TransactionLoading value,
          $Res Function(_$TransactionLoading) then) =
      __$$TransactionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionLoadingCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$$TransactionLoadingCopyWith<$Res> {
  __$$TransactionLoadingCopyWithImpl(
      _$TransactionLoading _value, $Res Function(_$TransactionLoading) _then)
      : super(_value, (v) => _then(v as _$TransactionLoading));

  @override
  _$TransactionLoading get _value => super._value as _$TransactionLoading;
}

/// @nodoc

class _$TransactionLoading implements TransactionLoading {
  const _$TransactionLoading();

  @override
  String toString() {
    return 'TransactionState.transactionLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionSuccess,
    required TResult Function() transactionLoading,
    required TResult Function() transactionError,
  }) {
    return transactionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionSuccess,
    TResult Function()? transactionLoading,
    TResult Function()? transactionError,
  }) {
    return transactionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionSuccess,
    TResult Function()? transactionLoading,
    TResult Function()? transactionError,
    required TResult orElse(),
  }) {
    if (transactionLoading != null) {
      return transactionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionLoaded value) transactionSuccess,
    required TResult Function(TransactionLoading value) transactionLoading,
    required TResult Function(TransactionError value) transactionError,
  }) {
    return transactionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionLoaded value)? transactionSuccess,
    TResult Function(TransactionLoading value)? transactionLoading,
    TResult Function(TransactionError value)? transactionError,
  }) {
    return transactionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionLoaded value)? transactionSuccess,
    TResult Function(TransactionLoading value)? transactionLoading,
    TResult Function(TransactionError value)? transactionError,
    required TResult orElse(),
  }) {
    if (transactionLoading != null) {
      return transactionLoading(this);
    }
    return orElse();
  }
}

abstract class TransactionLoading implements TransactionState {
  const factory TransactionLoading() = _$TransactionLoading;
}

/// @nodoc
abstract class _$$TransactionErrorCopyWith<$Res> {
  factory _$$TransactionErrorCopyWith(
          _$TransactionError value, $Res Function(_$TransactionError) then) =
      __$$TransactionErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionErrorCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$$TransactionErrorCopyWith<$Res> {
  __$$TransactionErrorCopyWithImpl(
      _$TransactionError _value, $Res Function(_$TransactionError) _then)
      : super(_value, (v) => _then(v as _$TransactionError));

  @override
  _$TransactionError get _value => super._value as _$TransactionError;
}

/// @nodoc

class _$TransactionError implements TransactionError {
  const _$TransactionError();

  @override
  String toString() {
    return 'TransactionState.transactionError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Transaction> transactions)
        transactionSuccess,
    required TResult Function() transactionLoading,
    required TResult Function() transactionError,
  }) {
    return transactionError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionSuccess,
    TResult Function()? transactionLoading,
    TResult Function()? transactionError,
  }) {
    return transactionError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Transaction> transactions)? transactionSuccess,
    TResult Function()? transactionLoading,
    TResult Function()? transactionError,
    required TResult orElse(),
  }) {
    if (transactionError != null) {
      return transactionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionLoaded value) transactionSuccess,
    required TResult Function(TransactionLoading value) transactionLoading,
    required TResult Function(TransactionError value) transactionError,
  }) {
    return transactionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransactionLoaded value)? transactionSuccess,
    TResult Function(TransactionLoading value)? transactionLoading,
    TResult Function(TransactionError value)? transactionError,
  }) {
    return transactionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionLoaded value)? transactionSuccess,
    TResult Function(TransactionLoading value)? transactionLoading,
    TResult Function(TransactionError value)? transactionError,
    required TResult orElse(),
  }) {
    if (transactionError != null) {
      return transactionError(this);
    }
    return orElse();
  }
}

abstract class TransactionError implements TransactionState {
  const factory TransactionError() = _$TransactionError;
}
