// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$LoadWalletsCopyWith<$Res> {
  factory _$$LoadWalletsCopyWith(
          _$LoadWallets value, $Res Function(_$LoadWallets) then) =
      __$$LoadWalletsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadWalletsCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements _$$LoadWalletsCopyWith<$Res> {
  __$$LoadWalletsCopyWithImpl(
      _$LoadWallets _value, $Res Function(_$LoadWallets) _then)
      : super(_value, (v) => _then(v as _$LoadWallets));

  @override
  _$LoadWallets get _value => super._value as _$LoadWallets;
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
        (other.runtimeType == runtimeType && other is _$LoadWallets);
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
abstract class _$$AddWalletCopyWith<$Res> {
  factory _$$AddWalletCopyWith(
          _$AddWallet value, $Res Function(_$AddWallet) then) =
      __$$AddWalletCopyWithImpl<$Res>;
  $Res call({Wallet wallet});
}

/// @nodoc
class __$$AddWalletCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements _$$AddWalletCopyWith<$Res> {
  __$$AddWalletCopyWithImpl(
      _$AddWallet _value, $Res Function(_$AddWallet) _then)
      : super(_value, (v) => _then(v as _$AddWallet));

  @override
  _$AddWallet get _value => super._value as _$AddWallet;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(_$AddWallet(
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
            other is _$AddWallet &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  _$$AddWalletCopyWith<_$AddWallet> get copyWith =>
      __$$AddWalletCopyWithImpl<_$AddWallet>(this, _$identity);

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
  const factory AddWallet(final Wallet wallet) = _$AddWallet;

  Wallet get wallet => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddWalletCopyWith<_$AddWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteWalletCopyWith<$Res> {
  factory _$$DeleteWalletCopyWith(
          _$DeleteWallet value, $Res Function(_$DeleteWallet) then) =
      __$$DeleteWalletCopyWithImpl<$Res>;
  $Res call({Wallet wallet});
}

/// @nodoc
class __$$DeleteWalletCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements _$$DeleteWalletCopyWith<$Res> {
  __$$DeleteWalletCopyWithImpl(
      _$DeleteWallet _value, $Res Function(_$DeleteWallet) _then)
      : super(_value, (v) => _then(v as _$DeleteWallet));

  @override
  _$DeleteWallet get _value => super._value as _$DeleteWallet;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(_$DeleteWallet(
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
            other is _$DeleteWallet &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  _$$DeleteWalletCopyWith<_$DeleteWallet> get copyWith =>
      __$$DeleteWalletCopyWithImpl<_$DeleteWallet>(this, _$identity);

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
  const factory DeleteWallet(final Wallet wallet) = _$DeleteWallet;

  Wallet get wallet => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteWalletCopyWith<_$DeleteWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateWalletCopyWith<$Res> {
  factory _$$UpdateWalletCopyWith(
          _$UpdateWallet value, $Res Function(_$UpdateWallet) then) =
      __$$UpdateWalletCopyWithImpl<$Res>;
  $Res call({Wallet updatedWallet});
}

/// @nodoc
class __$$UpdateWalletCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements _$$UpdateWalletCopyWith<$Res> {
  __$$UpdateWalletCopyWithImpl(
      _$UpdateWallet _value, $Res Function(_$UpdateWallet) _then)
      : super(_value, (v) => _then(v as _$UpdateWallet));

  @override
  _$UpdateWallet get _value => super._value as _$UpdateWallet;

  @override
  $Res call({
    Object? updatedWallet = freezed,
  }) {
    return _then(_$UpdateWallet(
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
            other is _$UpdateWallet &&
            const DeepCollectionEquality()
                .equals(other.updatedWallet, updatedWallet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updatedWallet));

  @JsonKey(ignore: true)
  @override
  _$$UpdateWalletCopyWith<_$UpdateWallet> get copyWith =>
      __$$UpdateWalletCopyWithImpl<_$UpdateWallet>(this, _$identity);

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
  const factory UpdateWallet(final Wallet updatedWallet) = _$UpdateWallet;

  Wallet get updatedWallet => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateWalletCopyWith<_$UpdateWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletUpdatedCopyWith<$Res> {
  factory _$$WalletUpdatedCopyWith(
          _$WalletUpdated value, $Res Function(_$WalletUpdated) then) =
      __$$WalletUpdatedCopyWithImpl<$Res>;
  $Res call({List<Wallet> wallets});
}

/// @nodoc
class __$$WalletUpdatedCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res>
    implements _$$WalletUpdatedCopyWith<$Res> {
  __$$WalletUpdatedCopyWithImpl(
      _$WalletUpdated _value, $Res Function(_$WalletUpdated) _then)
      : super(_value, (v) => _then(v as _$WalletUpdated));

  @override
  _$WalletUpdated get _value => super._value as _$WalletUpdated;

  @override
  $Res call({
    Object? wallets = freezed,
  }) {
    return _then(_$WalletUpdated(
      wallets == freezed
          ? _value._wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ));
  }
}

/// @nodoc

class _$WalletUpdated implements WalletUpdated {
  const _$WalletUpdated(final List<Wallet> wallets) : _wallets = wallets;

  final List<Wallet> _wallets;
  @override
  List<Wallet> get wallets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallets);
  }

  @override
  String toString() {
    return 'WalletEvent.walletUpdated(wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletUpdated &&
            const DeepCollectionEquality().equals(other._wallets, _wallets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wallets));

  @JsonKey(ignore: true)
  @override
  _$$WalletUpdatedCopyWith<_$WalletUpdated> get copyWith =>
      __$$WalletUpdatedCopyWithImpl<_$WalletUpdated>(this, _$identity);

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
  const factory WalletUpdated(final List<Wallet> wallets) = _$WalletUpdated;

  List<Wallet> get wallets => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$WalletUpdatedCopyWith<_$WalletUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$WalletLoadedCopyWith<$Res> {
  factory _$$WalletLoadedCopyWith(
          _$WalletLoaded value, $Res Function(_$WalletLoaded) then) =
      __$$WalletLoadedCopyWithImpl<$Res>;
  $Res call({List<Wallet> wallets});
}

/// @nodoc
class __$$WalletLoadedCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements _$$WalletLoadedCopyWith<$Res> {
  __$$WalletLoadedCopyWithImpl(
      _$WalletLoaded _value, $Res Function(_$WalletLoaded) _then)
      : super(_value, (v) => _then(v as _$WalletLoaded));

  @override
  _$WalletLoaded get _value => super._value as _$WalletLoaded;

  @override
  $Res call({
    Object? wallets = freezed,
  }) {
    return _then(_$WalletLoaded(
      wallets == freezed
          ? _value._wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ));
  }
}

/// @nodoc

class _$WalletLoaded implements WalletLoaded {
  const _$WalletLoaded(final List<Wallet> wallets) : _wallets = wallets;

  final List<Wallet> _wallets;
  @override
  List<Wallet> get wallets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallets);
  }

  @override
  String toString() {
    return 'WalletState.walletSuccess(wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletLoaded &&
            const DeepCollectionEquality().equals(other._wallets, _wallets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wallets));

  @JsonKey(ignore: true)
  @override
  _$$WalletLoadedCopyWith<_$WalletLoaded> get copyWith =>
      __$$WalletLoadedCopyWithImpl<_$WalletLoaded>(this, _$identity);

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
  const factory WalletLoaded(final List<Wallet> wallets) = _$WalletLoaded;

  List<Wallet> get wallets => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$WalletLoadedCopyWith<_$WalletLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletLoadingCopyWith<$Res> {
  factory _$$WalletLoadingCopyWith(
          _$WalletLoading value, $Res Function(_$WalletLoading) then) =
      __$$WalletLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletLoadingCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res>
    implements _$$WalletLoadingCopyWith<$Res> {
  __$$WalletLoadingCopyWithImpl(
      _$WalletLoading _value, $Res Function(_$WalletLoading) _then)
      : super(_value, (v) => _then(v as _$WalletLoading));

  @override
  _$WalletLoading get _value => super._value as _$WalletLoading;
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
        (other.runtimeType == runtimeType && other is _$WalletLoading);
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
abstract class _$$WalletErrorCopyWith<$Res> {
  factory _$$WalletErrorCopyWith(
          _$WalletError value, $Res Function(_$WalletError) then) =
      __$$WalletErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletErrorCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements _$$WalletErrorCopyWith<$Res> {
  __$$WalletErrorCopyWithImpl(
      _$WalletError _value, $Res Function(_$WalletError) _then)
      : super(_value, (v) => _then(v as _$WalletError));

  @override
  _$WalletError get _value => super._value as _$WalletError;
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
        (other.runtimeType == runtimeType && other is _$WalletError);
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
