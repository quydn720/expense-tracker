// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletEventTearOff {
  const _$WalletEventTearOff();

  LoadWallets loadWallets() {
    return const LoadWallets();
  }

  AddWallet addTransaction(Wallet wallet) {
    return AddWallet(
      wallet,
    );
  }

  DeleteWallet deleteWallet(Wallet wallet) {
    return DeleteWallet(
      wallet,
    );
  }

  UpdateWallet updateWallet(Wallet updatedWallet) {
    return UpdateWallet(
      updatedWallet,
    );
  }

  WalletUpdated walletUpdated(List<Wallet> wallets) {
    return WalletUpdated(
      wallets,
    );
  }
}

/// @nodoc
const $WalletEvent = _$WalletEventTearOff();

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWallets,
    required TResult Function(Wallet wallet) addTransaction,
    required TResult Function(Wallet wallet) deleteWallet,
    required TResult Function(Wallet updatedWallet) updateWallet,
    required TResult Function(List<Wallet> wallets) walletUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWallets value) loadWallets,
    required TResult Function(AddWallet value) addTransaction,
    required TResult Function(DeleteWallet value) deleteWallet,
    required TResult Function(UpdateWallet value) updateWallet,
    required TResult Function(WalletUpdated value) walletUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res> implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  final WalletEvent _value;
  // ignore: unused_field
  final $Res Function(WalletEvent) _then;
}

/// @nodoc
abstract class $LoadWalletsCopyWith<$Res> {
  factory $LoadWalletsCopyWith(
          LoadWallets value, $Res Function(LoadWallets) then) =
      _$LoadWalletsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadWalletsCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $LoadWalletsCopyWith<$Res> {
  _$LoadWalletsCopyWithImpl(
      LoadWallets _value, $Res Function(LoadWallets) _then)
      : super(_value, (v) => _then(v as LoadWallets));

  @override
  LoadWallets get _value => super._value as LoadWallets;
}

/// @nodoc

class _$LoadWallets implements LoadWallets {
  const _$LoadWallets();

  @override
  String toString() {
    return 'WalletEvent.loadWallets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadWallets);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWallets,
    required TResult Function(Wallet wallet) addTransaction,
    required TResult Function(Wallet wallet) deleteWallet,
    required TResult Function(Wallet updatedWallet) updateWallet,
    required TResult Function(List<Wallet> wallets) walletUpdated,
  }) {
    return loadWallets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
  }) {
    return loadWallets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
    required TResult orElse(),
  }) {
    if (loadWallets != null) {
      return loadWallets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWallets value) loadWallets,
    required TResult Function(AddWallet value) addTransaction,
    required TResult Function(DeleteWallet value) deleteWallet,
    required TResult Function(UpdateWallet value) updateWallet,
    required TResult Function(WalletUpdated value) walletUpdated,
  }) {
    return loadWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
  }) {
    return loadWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
    required TResult orElse(),
  }) {
    if (loadWallets != null) {
      return loadWallets(this);
    }
    return orElse();
  }
}

abstract class LoadWallets implements WalletEvent {
  const factory LoadWallets() = _$LoadWallets;
}

/// @nodoc
abstract class $AddWalletCopyWith<$Res> {
  factory $AddWalletCopyWith(AddWallet value, $Res Function(AddWallet) then) =
      _$AddWalletCopyWithImpl<$Res>;
  $Res call({Wallet wallet});
}

/// @nodoc
class _$AddWalletCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $AddWalletCopyWith<$Res> {
  _$AddWalletCopyWithImpl(AddWallet _value, $Res Function(AddWallet) _then)
      : super(_value, (v) => _then(v as AddWallet));

  @override
  AddWallet get _value => super._value as AddWallet;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(AddWallet(
      wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }
}

/// @nodoc

class _$AddWallet implements AddWallet {
  const _$AddWallet(this.wallet);

  @override
  final Wallet wallet;

  @override
  String toString() {
    return 'WalletEvent.addTransaction(wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddWallet &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  $AddWalletCopyWith<AddWallet> get copyWith =>
      _$AddWalletCopyWithImpl<AddWallet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWallets,
    required TResult Function(Wallet wallet) addTransaction,
    required TResult Function(Wallet wallet) deleteWallet,
    required TResult Function(Wallet updatedWallet) updateWallet,
    required TResult Function(List<Wallet> wallets) walletUpdated,
  }) {
    return addTransaction(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
  }) {
    return addTransaction?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWallets value) loadWallets,
    required TResult Function(AddWallet value) addTransaction,
    required TResult Function(DeleteWallet value) deleteWallet,
    required TResult Function(UpdateWallet value) updateWallet,
    required TResult Function(WalletUpdated value) walletUpdated,
  }) {
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
  }) {
    return addTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class AddWallet implements WalletEvent {
  const factory AddWallet(Wallet wallet) = _$AddWallet;

  Wallet get wallet;
  @JsonKey(ignore: true)
  $AddWalletCopyWith<AddWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteWalletCopyWith<$Res> {
  factory $DeleteWalletCopyWith(
          DeleteWallet value, $Res Function(DeleteWallet) then) =
      _$DeleteWalletCopyWithImpl<$Res>;
  $Res call({Wallet wallet});
}

/// @nodoc
class _$DeleteWalletCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $DeleteWalletCopyWith<$Res> {
  _$DeleteWalletCopyWithImpl(
      DeleteWallet _value, $Res Function(DeleteWallet) _then)
      : super(_value, (v) => _then(v as DeleteWallet));

  @override
  DeleteWallet get _value => super._value as DeleteWallet;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(DeleteWallet(
      wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }
}

/// @nodoc

class _$DeleteWallet implements DeleteWallet {
  const _$DeleteWallet(this.wallet);

  @override
  final Wallet wallet;

  @override
  String toString() {
    return 'WalletEvent.deleteWallet(wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteWallet &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  $DeleteWalletCopyWith<DeleteWallet> get copyWith =>
      _$DeleteWalletCopyWithImpl<DeleteWallet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWallets,
    required TResult Function(Wallet wallet) addTransaction,
    required TResult Function(Wallet wallet) deleteWallet,
    required TResult Function(Wallet updatedWallet) updateWallet,
    required TResult Function(List<Wallet> wallets) walletUpdated,
  }) {
    return deleteWallet(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
  }) {
    return deleteWallet?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
    required TResult orElse(),
  }) {
    if (deleteWallet != null) {
      return deleteWallet(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWallets value) loadWallets,
    required TResult Function(AddWallet value) addTransaction,
    required TResult Function(DeleteWallet value) deleteWallet,
    required TResult Function(UpdateWallet value) updateWallet,
    required TResult Function(WalletUpdated value) walletUpdated,
  }) {
    return deleteWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
  }) {
    return deleteWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
    required TResult orElse(),
  }) {
    if (deleteWallet != null) {
      return deleteWallet(this);
    }
    return orElse();
  }
}

abstract class DeleteWallet implements WalletEvent {
  const factory DeleteWallet(Wallet wallet) = _$DeleteWallet;

  Wallet get wallet;
  @JsonKey(ignore: true)
  $DeleteWalletCopyWith<DeleteWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWalletCopyWith<$Res> {
  factory $UpdateWalletCopyWith(
          UpdateWallet value, $Res Function(UpdateWallet) then) =
      _$UpdateWalletCopyWithImpl<$Res>;
  $Res call({Wallet updatedWallet});
}

/// @nodoc
class _$UpdateWalletCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $UpdateWalletCopyWith<$Res> {
  _$UpdateWalletCopyWithImpl(
      UpdateWallet _value, $Res Function(UpdateWallet) _then)
      : super(_value, (v) => _then(v as UpdateWallet));

  @override
  UpdateWallet get _value => super._value as UpdateWallet;

  @override
  $Res call({
    Object? updatedWallet = freezed,
  }) {
    return _then(UpdateWallet(
      updatedWallet == freezed
          ? _value.updatedWallet
          : updatedWallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }
}

/// @nodoc

class _$UpdateWallet implements UpdateWallet {
  const _$UpdateWallet(this.updatedWallet);

  @override
  final Wallet updatedWallet;

  @override
  String toString() {
    return 'WalletEvent.updateWallet(updatedWallet: $updatedWallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateWallet &&
            const DeepCollectionEquality()
                .equals(other.updatedWallet, updatedWallet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updatedWallet));

  @JsonKey(ignore: true)
  @override
  $UpdateWalletCopyWith<UpdateWallet> get copyWith =>
      _$UpdateWalletCopyWithImpl<UpdateWallet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWallets,
    required TResult Function(Wallet wallet) addTransaction,
    required TResult Function(Wallet wallet) deleteWallet,
    required TResult Function(Wallet updatedWallet) updateWallet,
    required TResult Function(List<Wallet> wallets) walletUpdated,
  }) {
    return updateWallet(updatedWallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
  }) {
    return updateWallet?.call(updatedWallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
    required TResult orElse(),
  }) {
    if (updateWallet != null) {
      return updateWallet(updatedWallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWallets value) loadWallets,
    required TResult Function(AddWallet value) addTransaction,
    required TResult Function(DeleteWallet value) deleteWallet,
    required TResult Function(UpdateWallet value) updateWallet,
    required TResult Function(WalletUpdated value) walletUpdated,
  }) {
    return updateWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
  }) {
    return updateWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
    required TResult orElse(),
  }) {
    if (updateWallet != null) {
      return updateWallet(this);
    }
    return orElse();
  }
}

abstract class UpdateWallet implements WalletEvent {
  const factory UpdateWallet(Wallet updatedWallet) = _$UpdateWallet;

  Wallet get updatedWallet;
  @JsonKey(ignore: true)
  $UpdateWalletCopyWith<UpdateWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletUpdatedCopyWith<$Res> {
  factory $WalletUpdatedCopyWith(
          WalletUpdated value, $Res Function(WalletUpdated) then) =
      _$WalletUpdatedCopyWithImpl<$Res>;
  $Res call({List<Wallet> wallets});
}

/// @nodoc
class _$WalletUpdatedCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $WalletUpdatedCopyWith<$Res> {
  _$WalletUpdatedCopyWithImpl(
      WalletUpdated _value, $Res Function(WalletUpdated) _then)
      : super(_value, (v) => _then(v as WalletUpdated));

  @override
  WalletUpdated get _value => super._value as WalletUpdated;

  @override
  $Res call({
    Object? wallets = freezed,
  }) {
    return _then(WalletUpdated(
      wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ));
  }
}

/// @nodoc

class _$WalletUpdated implements WalletUpdated {
  const _$WalletUpdated(this.wallets);

  @override
  final List<Wallet> wallets;

  @override
  String toString() {
    return 'WalletEvent.walletUpdated(wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletUpdated &&
            const DeepCollectionEquality().equals(other.wallets, wallets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallets));

  @JsonKey(ignore: true)
  @override
  $WalletUpdatedCopyWith<WalletUpdated> get copyWith =>
      _$WalletUpdatedCopyWithImpl<WalletUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWallets,
    required TResult Function(Wallet wallet) addTransaction,
    required TResult Function(Wallet wallet) deleteWallet,
    required TResult Function(Wallet updatedWallet) updateWallet,
    required TResult Function(List<Wallet> wallets) walletUpdated,
  }) {
    return walletUpdated(wallets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
  }) {
    return walletUpdated?.call(wallets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWallets,
    TResult Function(Wallet wallet)? addTransaction,
    TResult Function(Wallet wallet)? deleteWallet,
    TResult Function(Wallet updatedWallet)? updateWallet,
    TResult Function(List<Wallet> wallets)? walletUpdated,
    required TResult orElse(),
  }) {
    if (walletUpdated != null) {
      return walletUpdated(wallets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWallets value) loadWallets,
    required TResult Function(AddWallet value) addTransaction,
    required TResult Function(DeleteWallet value) deleteWallet,
    required TResult Function(UpdateWallet value) updateWallet,
    required TResult Function(WalletUpdated value) walletUpdated,
  }) {
    return walletUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
  }) {
    return walletUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWallets value)? loadWallets,
    TResult Function(AddWallet value)? addTransaction,
    TResult Function(DeleteWallet value)? deleteWallet,
    TResult Function(UpdateWallet value)? updateWallet,
    TResult Function(WalletUpdated value)? walletUpdated,
    required TResult orElse(),
  }) {
    if (walletUpdated != null) {
      return walletUpdated(this);
    }
    return orElse();
  }
}

abstract class WalletUpdated implements WalletEvent {
  const factory WalletUpdated(List<Wallet> wallets) = _$WalletUpdated;

  List<Wallet> get wallets;
  @JsonKey(ignore: true)
  $WalletUpdatedCopyWith<WalletUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WalletStateTearOff {
  const _$WalletStateTearOff();

  WalletLoaded walletSuccess(List<Wallet> wallets) {
    return WalletLoaded(
      wallets,
    );
  }

  WalletLoading walletLoading() {
    return const WalletLoading();
  }

  WalletError walletError() {
    return const WalletError();
  }
}

/// @nodoc
const $WalletState = _$WalletStateTearOff();

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Wallet> wallets) walletSuccess,
    required TResult Function() walletLoading,
    required TResult Function() walletError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Wallet> wallets)? walletSuccess,
    TResult Function()? walletLoading,
    TResult Function()? walletError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Wallet> wallets)? walletSuccess,
    TResult Function()? walletLoading,
    TResult Function()? walletError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletLoaded value) walletSuccess,
    required TResult Function(WalletLoading value) walletLoading,
    required TResult Function(WalletError value) walletError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletLoaded value)? walletSuccess,
    TResult Function(WalletLoading value)? walletLoading,
    TResult Function(WalletError value)? walletError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletLoaded value)? walletSuccess,
    TResult Function(WalletLoading value)? walletLoading,
    TResult Function(WalletError value)? walletError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res> implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  final WalletState _value;
  // ignore: unused_field
  final $Res Function(WalletState) _then;
}

/// @nodoc
abstract class $WalletLoadedCopyWith<$Res> {
  factory $WalletLoadedCopyWith(
          WalletLoaded value, $Res Function(WalletLoaded) then) =
      _$WalletLoadedCopyWithImpl<$Res>;
  $Res call({List<Wallet> wallets});
}

/// @nodoc
class _$WalletLoadedCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $WalletLoadedCopyWith<$Res> {
  _$WalletLoadedCopyWithImpl(
      WalletLoaded _value, $Res Function(WalletLoaded) _then)
      : super(_value, (v) => _then(v as WalletLoaded));

  @override
  WalletLoaded get _value => super._value as WalletLoaded;

  @override
  $Res call({
    Object? wallets = freezed,
  }) {
    return _then(WalletLoaded(
      wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ));
  }
}

/// @nodoc

class _$WalletLoaded implements WalletLoaded {
  const _$WalletLoaded(this.wallets);

  @override
  final List<Wallet> wallets;

  @override
  String toString() {
    return 'WalletState.walletSuccess(wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletLoaded &&
            const DeepCollectionEquality().equals(other.wallets, wallets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallets));

  @JsonKey(ignore: true)
  @override
  $WalletLoadedCopyWith<WalletLoaded> get copyWith =>
      _$WalletLoadedCopyWithImpl<WalletLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Wallet> wallets) walletSuccess,
    required TResult Function() walletLoading,
    required TResult Function() walletError,
  }) {
    return walletSuccess(wallets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Wallet> wallets)? walletSuccess,
    TResult Function()? walletLoading,
    TResult Function()? walletError,
  }) {
    return walletSuccess?.call(wallets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Wallet> wallets)? walletSuccess,
    TResult Function()? walletLoading,
    TResult Function()? walletError,
    required TResult orElse(),
  }) {
    if (walletSuccess != null) {
      return walletSuccess(wallets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletLoaded value) walletSuccess,
    required TResult Function(WalletLoading value) walletLoading,
    required TResult Function(WalletError value) walletError,
  }) {
    return walletSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletLoaded value)? walletSuccess,
    TResult Function(WalletLoading value)? walletLoading,
    TResult Function(WalletError value)? walletError,
  }) {
    return walletSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletLoaded value)? walletSuccess,
    TResult Function(WalletLoading value)? walletLoading,
    TResult Function(WalletError value)? walletError,
    required TResult orElse(),
  }) {
    if (walletSuccess != null) {
      return walletSuccess(this);
    }
    return orElse();
  }
}

abstract class WalletLoaded implements WalletState {
  const factory WalletLoaded(List<Wallet> wallets) = _$WalletLoaded;

  List<Wallet> get wallets;
  @JsonKey(ignore: true)
  $WalletLoadedCopyWith<WalletLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletLoadingCopyWith<$Res> {
  factory $WalletLoadingCopyWith(
          WalletLoading value, $Res Function(WalletLoading) then) =
      _$WalletLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletLoadingCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $WalletLoadingCopyWith<$Res> {
  _$WalletLoadingCopyWithImpl(
      WalletLoading _value, $Res Function(WalletLoading) _then)
      : super(_value, (v) => _then(v as WalletLoading));

  @override
  WalletLoading get _value => super._value as WalletLoading;
}

/// @nodoc

class _$WalletLoading implements WalletLoading {
  const _$WalletLoading();

  @override
  String toString() {
    return 'WalletState.walletLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Wallet> wallets) walletSuccess,
    required TResult Function() walletLoading,
    required TResult Function() walletError,
  }) {
    return walletLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Wallet> wallets)? walletSuccess,
    TResult Function()? walletLoading,
    TResult Function()? walletError,
  }) {
    return walletLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Wallet> wallets)? walletSuccess,
    TResult Function()? walletLoading,
    TResult Function()? walletError,
    required TResult orElse(),
  }) {
    if (walletLoading != null) {
      return walletLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletLoaded value) walletSuccess,
    required TResult Function(WalletLoading value) walletLoading,
    required TResult Function(WalletError value) walletError,
  }) {
    return walletLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletLoaded value)? walletSuccess,
    TResult Function(WalletLoading value)? walletLoading,
    TResult Function(WalletError value)? walletError,
  }) {
    return walletLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletLoaded value)? walletSuccess,
    TResult Function(WalletLoading value)? walletLoading,
    TResult Function(WalletError value)? walletError,
    required TResult orElse(),
  }) {
    if (walletLoading != null) {
      return walletLoading(this);
    }
    return orElse();
  }
}

abstract class WalletLoading implements WalletState {
  const factory WalletLoading() = _$WalletLoading;
}

/// @nodoc
abstract class $WalletErrorCopyWith<$Res> {
  factory $WalletErrorCopyWith(
          WalletError value, $Res Function(WalletError) then) =
      _$WalletErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletErrorCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $WalletErrorCopyWith<$Res> {
  _$WalletErrorCopyWithImpl(
      WalletError _value, $Res Function(WalletError) _then)
      : super(_value, (v) => _then(v as WalletError));

  @override
  WalletError get _value => super._value as WalletError;
}

/// @nodoc

class _$WalletError implements WalletError {
  const _$WalletError();

  @override
  String toString() {
    return 'WalletState.walletError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Wallet> wallets) walletSuccess,
    required TResult Function() walletLoading,
    required TResult Function() walletError,
  }) {
    return walletError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Wallet> wallets)? walletSuccess,
    TResult Function()? walletLoading,
    TResult Function()? walletError,
  }) {
    return walletError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Wallet> wallets)? walletSuccess,
    TResult Function()? walletLoading,
    TResult Function()? walletError,
    required TResult orElse(),
  }) {
    if (walletError != null) {
      return walletError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletLoaded value) walletSuccess,
    required TResult Function(WalletLoading value) walletLoading,
    required TResult Function(WalletError value) walletError,
  }) {
    return walletError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletLoaded value)? walletSuccess,
    TResult Function(WalletLoading value)? walletLoading,
    TResult Function(WalletError value)? walletError,
  }) {
    return walletError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletLoaded value)? walletSuccess,
    TResult Function(WalletLoading value)? walletLoading,
    TResult Function(WalletError value)? walletError,
    required TResult orElse(),
  }) {
    if (walletError != null) {
      return walletError(this);
    }
    return orElse();
  }
}

abstract class WalletError implements WalletState {
  const factory WalletError() = _$WalletError;
}
