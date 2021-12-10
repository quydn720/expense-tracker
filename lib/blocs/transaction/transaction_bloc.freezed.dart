// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionEventTearOff {
  const _$TransactionEventTearOff();

  LoadTransactions loadTransactions() {
    return const LoadTransactions();
  }

  AddTransactions addTransaction(Transaction transaction) {
    return AddTransactions(
      transaction,
    );
  }

  DeleteTransactions deleteTransaction(Transaction transaction) {
    return DeleteTransactions(
      transaction,
    );
  }

  UpdateTransactions updateTransaction(Transaction updatedTransaction) {
    return UpdateTransactions(
      updatedTransaction,
    );
  }

  TransactionUpdated transactionUpdated(List<Transaction> transactions) {
    return TransactionUpdated(
      transactions,
    );
  }
}

/// @nodoc
const $TransactionEvent = _$TransactionEventTearOff();

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
abstract class $LoadTransactionsCopyWith<$Res> {
  factory $LoadTransactionsCopyWith(
          LoadTransactions value, $Res Function(LoadTransactions) then) =
      _$LoadTransactionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadTransactionsCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements $LoadTransactionsCopyWith<$Res> {
  _$LoadTransactionsCopyWithImpl(
      LoadTransactions _value, $Res Function(LoadTransactions) _then)
      : super(_value, (v) => _then(v as LoadTransactions));

  @override
  LoadTransactions get _value => super._value as LoadTransactions;
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
        (other.runtimeType == runtimeType && other is LoadTransactions);
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
abstract class $AddTransactionsCopyWith<$Res> {
  factory $AddTransactionsCopyWith(
          AddTransactions value, $Res Function(AddTransactions) then) =
      _$AddTransactionsCopyWithImpl<$Res>;
  $Res call({Transaction transaction});
}

/// @nodoc
class _$AddTransactionsCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements $AddTransactionsCopyWith<$Res> {
  _$AddTransactionsCopyWithImpl(
      AddTransactions _value, $Res Function(AddTransactions) _then)
      : super(_value, (v) => _then(v as AddTransactions));

  @override
  AddTransactions get _value => super._value as AddTransactions;

  @override
  $Res call({
    Object? transaction = freezed,
  }) {
    return _then(AddTransactions(
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
            other is AddTransactions &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  $AddTransactionsCopyWith<AddTransactions> get copyWith =>
      _$AddTransactionsCopyWithImpl<AddTransactions>(this, _$identity);

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
  const factory AddTransactions(Transaction transaction) = _$AddTransactions;

  Transaction get transaction;
  @JsonKey(ignore: true)
  $AddTransactionsCopyWith<AddTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTransactionsCopyWith<$Res> {
  factory $DeleteTransactionsCopyWith(
          DeleteTransactions value, $Res Function(DeleteTransactions) then) =
      _$DeleteTransactionsCopyWithImpl<$Res>;
  $Res call({Transaction transaction});
}

/// @nodoc
class _$DeleteTransactionsCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements $DeleteTransactionsCopyWith<$Res> {
  _$DeleteTransactionsCopyWithImpl(
      DeleteTransactions _value, $Res Function(DeleteTransactions) _then)
      : super(_value, (v) => _then(v as DeleteTransactions));

  @override
  DeleteTransactions get _value => super._value as DeleteTransactions;

  @override
  $Res call({
    Object? transaction = freezed,
  }) {
    return _then(DeleteTransactions(
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
            other is DeleteTransactions &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  $DeleteTransactionsCopyWith<DeleteTransactions> get copyWith =>
      _$DeleteTransactionsCopyWithImpl<DeleteTransactions>(this, _$identity);

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
  const factory DeleteTransactions(Transaction transaction) =
      _$DeleteTransactions;

  Transaction get transaction;
  @JsonKey(ignore: true)
  $DeleteTransactionsCopyWith<DeleteTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTransactionsCopyWith<$Res> {
  factory $UpdateTransactionsCopyWith(
          UpdateTransactions value, $Res Function(UpdateTransactions) then) =
      _$UpdateTransactionsCopyWithImpl<$Res>;
  $Res call({Transaction updatedTransaction});
}

/// @nodoc
class _$UpdateTransactionsCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements $UpdateTransactionsCopyWith<$Res> {
  _$UpdateTransactionsCopyWithImpl(
      UpdateTransactions _value, $Res Function(UpdateTransactions) _then)
      : super(_value, (v) => _then(v as UpdateTransactions));

  @override
  UpdateTransactions get _value => super._value as UpdateTransactions;

  @override
  $Res call({
    Object? updatedTransaction = freezed,
  }) {
    return _then(UpdateTransactions(
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
            other is UpdateTransactions &&
            (identical(other.updatedTransaction, updatedTransaction) ||
                other.updatedTransaction == updatedTransaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedTransaction);

  @JsonKey(ignore: true)
  @override
  $UpdateTransactionsCopyWith<UpdateTransactions> get copyWith =>
      _$UpdateTransactionsCopyWithImpl<UpdateTransactions>(this, _$identity);

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
  const factory UpdateTransactions(Transaction updatedTransaction) =
      _$UpdateTransactions;

  Transaction get updatedTransaction;
  @JsonKey(ignore: true)
  $UpdateTransactionsCopyWith<UpdateTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionUpdatedCopyWith<$Res> {
  factory $TransactionUpdatedCopyWith(
          TransactionUpdated value, $Res Function(TransactionUpdated) then) =
      _$TransactionUpdatedCopyWithImpl<$Res>;
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class _$TransactionUpdatedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionUpdatedCopyWith<$Res> {
  _$TransactionUpdatedCopyWithImpl(
      TransactionUpdated _value, $Res Function(TransactionUpdated) _then)
      : super(_value, (v) => _then(v as TransactionUpdated));

  @override
  TransactionUpdated get _value => super._value as TransactionUpdated;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(TransactionUpdated(
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$TransactionUpdated implements TransactionUpdated {
  const _$TransactionUpdated(this.transactions);

  @override
  final List<Transaction> transactions;

  @override
  String toString() {
    return 'TransactionEvent.transactionUpdated(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionUpdated &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactions));

  @JsonKey(ignore: true)
  @override
  $TransactionUpdatedCopyWith<TransactionUpdated> get copyWith =>
      _$TransactionUpdatedCopyWithImpl<TransactionUpdated>(this, _$identity);

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
  const factory TransactionUpdated(List<Transaction> transactions) =
      _$TransactionUpdated;

  List<Transaction> get transactions;
  @JsonKey(ignore: true)
  $TransactionUpdatedCopyWith<TransactionUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

  TransactionLoaded transactionSuccess(List<Transaction> transactions) {
    return TransactionLoaded(
      transactions,
    );
  }

  TransactionLoading transactionLoading() {
    return const TransactionLoading();
  }

  TransactionError transactionError() {
    return const TransactionError();
  }
}

/// @nodoc
const $TransactionState = _$TransactionStateTearOff();

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
abstract class $TransactionLoadedCopyWith<$Res> {
  factory $TransactionLoadedCopyWith(
          TransactionLoaded value, $Res Function(TransactionLoaded) then) =
      _$TransactionLoadedCopyWithImpl<$Res>;
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class _$TransactionLoadedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionLoadedCopyWith<$Res> {
  _$TransactionLoadedCopyWithImpl(
      TransactionLoaded _value, $Res Function(TransactionLoaded) _then)
      : super(_value, (v) => _then(v as TransactionLoaded));

  @override
  TransactionLoaded get _value => super._value as TransactionLoaded;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(TransactionLoaded(
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$TransactionLoaded implements TransactionLoaded {
  const _$TransactionLoaded(this.transactions);

  @override
  final List<Transaction> transactions;

  @override
  String toString() {
    return 'TransactionState.transactionSuccess(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionLoaded &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactions));

  @JsonKey(ignore: true)
  @override
  $TransactionLoadedCopyWith<TransactionLoaded> get copyWith =>
      _$TransactionLoadedCopyWithImpl<TransactionLoaded>(this, _$identity);

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
  const factory TransactionLoaded(List<Transaction> transactions) =
      _$TransactionLoaded;

  List<Transaction> get transactions;
  @JsonKey(ignore: true)
  $TransactionLoadedCopyWith<TransactionLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionLoadingCopyWith<$Res> {
  factory $TransactionLoadingCopyWith(
          TransactionLoading value, $Res Function(TransactionLoading) then) =
      _$TransactionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionLoadingCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionLoadingCopyWith<$Res> {
  _$TransactionLoadingCopyWithImpl(
      TransactionLoading _value, $Res Function(TransactionLoading) _then)
      : super(_value, (v) => _then(v as TransactionLoading));

  @override
  TransactionLoading get _value => super._value as TransactionLoading;
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
        (other.runtimeType == runtimeType && other is TransactionLoading);
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
abstract class $TransactionErrorCopyWith<$Res> {
  factory $TransactionErrorCopyWith(
          TransactionError value, $Res Function(TransactionError) then) =
      _$TransactionErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionErrorCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionErrorCopyWith<$Res> {
  _$TransactionErrorCopyWithImpl(
      TransactionError _value, $Res Function(TransactionError) _then)
      : super(_value, (v) => _then(v as TransactionError));

  @override
  TransactionError get _value => super._value as TransactionError;
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
        (other.runtimeType == runtimeType && other is TransactionError);
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
