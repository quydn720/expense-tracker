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

  _Started started() {
    return const _Started();
  }

  GetAllWallet getAllWallets() {
    return const GetAllWallet();
  }

  WalletsReceived walletsReceived(List<Wallet> wallets) {
    return WalletsReceived(
      wallets,
    );
  }

  Deleted deleted(Wallet w) {
    return Deleted(
      w,
    );
  }
}

/// @nodoc
const $WalletEvent = _$WalletEventTearOff();

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllWallets,
    required TResult Function(List<Wallet> wallets) walletsReceived,
    required TResult Function(Wallet w) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWallets,
    TResult Function(List<Wallet> wallets)? walletsReceived,
    TResult Function(Wallet w)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWallets,
    TResult Function(List<Wallet> wallets)? walletsReceived,
    TResult Function(Wallet w)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllWallet value) getAllWallets,
    required TResult Function(WalletsReceived value) walletsReceived,
    required TResult Function(Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllWallet value)? getAllWallets,
    TResult Function(WalletsReceived value)? walletsReceived,
    TResult Function(Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllWallet value)? getAllWallets,
    TResult Function(WalletsReceived value)? walletsReceived,
    TResult Function(Deleted value)? deleted,
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
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
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
    return 'WalletEvent.started()';
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
    required TResult Function() getAllWallets,
    required TResult Function(List<Wallet> wallets) walletsReceived,
    required TResult Function(Wallet w) deleted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWallets,
    TResult Function(List<Wallet> wallets)? walletsReceived,
    TResult Function(Wallet w)? deleted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWallets,
    TResult Function(List<Wallet> wallets)? walletsReceived,
    TResult Function(Wallet w)? deleted,
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
    required TResult Function(GetAllWallet value) getAllWallets,
    required TResult Function(WalletsReceived value) walletsReceived,
    required TResult Function(Deleted value) deleted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllWallet value)? getAllWallets,
    TResult Function(WalletsReceived value)? walletsReceived,
    TResult Function(Deleted value)? deleted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllWallet value)? getAllWallets,
    TResult Function(WalletsReceived value)? walletsReceived,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WalletEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $GetAllWalletCopyWith<$Res> {
  factory $GetAllWalletCopyWith(
          GetAllWallet value, $Res Function(GetAllWallet) then) =
      _$GetAllWalletCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllWalletCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $GetAllWalletCopyWith<$Res> {
  _$GetAllWalletCopyWithImpl(
      GetAllWallet _value, $Res Function(GetAllWallet) _then)
      : super(_value, (v) => _then(v as GetAllWallet));

  @override
  GetAllWallet get _value => super._value as GetAllWallet;
}

/// @nodoc

class _$GetAllWallet implements GetAllWallet {
  const _$GetAllWallet();

  @override
  String toString() {
    return 'WalletEvent.getAllWallets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllWallet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllWallets,
    required TResult Function(List<Wallet> wallets) walletsReceived,
    required TResult Function(Wallet w) deleted,
  }) {
    return getAllWallets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWallets,
    TResult Function(List<Wallet> wallets)? walletsReceived,
    TResult Function(Wallet w)? deleted,
  }) {
    return getAllWallets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWallets,
    TResult Function(List<Wallet> wallets)? walletsReceived,
    TResult Function(Wallet w)? deleted,
    required TResult orElse(),
  }) {
    if (getAllWallets != null) {
      return getAllWallets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllWallet value) getAllWallets,
    required TResult Function(WalletsReceived value) walletsReceived,
    required TResult Function(Deleted value) deleted,
  }) {
    return getAllWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllWallet value)? getAllWallets,
    TResult Function(WalletsReceived value)? walletsReceived,
    TResult Function(Deleted value)? deleted,
  }) {
    return getAllWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllWallet value)? getAllWallets,
    TResult Function(WalletsReceived value)? walletsReceived,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (getAllWallets != null) {
      return getAllWallets(this);
    }
    return orElse();
  }
}

abstract class GetAllWallet implements WalletEvent {
  const factory GetAllWallet() = _$GetAllWallet;
}

/// @nodoc
abstract class $WalletsReceivedCopyWith<$Res> {
  factory $WalletsReceivedCopyWith(
          WalletsReceived value, $Res Function(WalletsReceived) then) =
      _$WalletsReceivedCopyWithImpl<$Res>;
  $Res call({List<Wallet> wallets});
}

/// @nodoc
class _$WalletsReceivedCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res>
    implements $WalletsReceivedCopyWith<$Res> {
  _$WalletsReceivedCopyWithImpl(
      WalletsReceived _value, $Res Function(WalletsReceived) _then)
      : super(_value, (v) => _then(v as WalletsReceived));

  @override
  WalletsReceived get _value => super._value as WalletsReceived;

  @override
  $Res call({
    Object? wallets = freezed,
  }) {
    return _then(WalletsReceived(
      wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ));
  }
}

/// @nodoc

class _$WalletsReceived implements WalletsReceived {
  const _$WalletsReceived(this.wallets);

  @override
  final List<Wallet> wallets;

  @override
  String toString() {
    return 'WalletEvent.walletsReceived(wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletsReceived &&
            const DeepCollectionEquality().equals(other.wallets, wallets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallets));

  @JsonKey(ignore: true)
  @override
  $WalletsReceivedCopyWith<WalletsReceived> get copyWith =>
      _$WalletsReceivedCopyWithImpl<WalletsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllWallets,
    required TResult Function(List<Wallet> wallets) walletsReceived,
    required TResult Function(Wallet w) deleted,
  }) {
    return walletsReceived(wallets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWallets,
    TResult Function(List<Wallet> wallets)? walletsReceived,
    TResult Function(Wallet w)? deleted,
  }) {
    return walletsReceived?.call(wallets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWallets,
    TResult Function(List<Wallet> wallets)? walletsReceived,
    TResult Function(Wallet w)? deleted,
    required TResult orElse(),
  }) {
    if (walletsReceived != null) {
      return walletsReceived(wallets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllWallet value) getAllWallets,
    required TResult Function(WalletsReceived value) walletsReceived,
    required TResult Function(Deleted value) deleted,
  }) {
    return walletsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllWallet value)? getAllWallets,
    TResult Function(WalletsReceived value)? walletsReceived,
    TResult Function(Deleted value)? deleted,
  }) {
    return walletsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllWallet value)? getAllWallets,
    TResult Function(WalletsReceived value)? walletsReceived,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (walletsReceived != null) {
      return walletsReceived(this);
    }
    return orElse();
  }
}

abstract class WalletsReceived implements WalletEvent {
  const factory WalletsReceived(List<Wallet> wallets) = _$WalletsReceived;

  List<Wallet> get wallets;
  @JsonKey(ignore: true)
  $WalletsReceivedCopyWith<WalletsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletedCopyWith<$Res> {
  factory $DeletedCopyWith(Deleted value, $Res Function(Deleted) then) =
      _$DeletedCopyWithImpl<$Res>;
  $Res call({Wallet w});

  $WalletCopyWith<$Res> get w;
}

/// @nodoc
class _$DeletedCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $DeletedCopyWith<$Res> {
  _$DeletedCopyWithImpl(Deleted _value, $Res Function(Deleted) _then)
      : super(_value, (v) => _then(v as Deleted));

  @override
  Deleted get _value => super._value as Deleted;

  @override
  $Res call({
    Object? w = freezed,
  }) {
    return _then(Deleted(
      w == freezed
          ? _value.w
          : w // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }

  @override
  $WalletCopyWith<$Res> get w {
    return $WalletCopyWith<$Res>(_value.w, (value) {
      return _then(_value.copyWith(w: value));
    });
  }
}

/// @nodoc

class _$Deleted implements Deleted {
  const _$Deleted(this.w);

  @override
  final Wallet w;

  @override
  String toString() {
    return 'WalletEvent.deleted(w: $w)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Deleted &&
            (identical(other.w, w) || other.w == w));
  }

  @override
  int get hashCode => Object.hash(runtimeType, w);

  @JsonKey(ignore: true)
  @override
  $DeletedCopyWith<Deleted> get copyWith =>
      _$DeletedCopyWithImpl<Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllWallets,
    required TResult Function(List<Wallet> wallets) walletsReceived,
    required TResult Function(Wallet w) deleted,
  }) {
    return deleted(w);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWallets,
    TResult Function(List<Wallet> wallets)? walletsReceived,
    TResult Function(Wallet w)? deleted,
  }) {
    return deleted?.call(w);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWallets,
    TResult Function(List<Wallet> wallets)? walletsReceived,
    TResult Function(Wallet w)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(w);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllWallet value) getAllWallets,
    required TResult Function(WalletsReceived value) walletsReceived,
    required TResult Function(Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllWallet value)? getAllWallets,
    TResult Function(WalletsReceived value)? walletsReceived,
    TResult Function(Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllWallet value)? getAllWallets,
    TResult Function(WalletsReceived value)? walletsReceived,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements WalletEvent {
  const factory Deleted(Wallet w) = _$Deleted;

  Wallet get w;
  @JsonKey(ignore: true)
  $DeletedCopyWith<Deleted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$WalletStateTearOff {
  const _$WalletStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  LoadingProgress loadingProgress() {
    return const LoadingProgress();
  }

  LoadSuccess loadSuccess(List<Wallet> wallets) {
    return LoadSuccess(
      wallets,
    );
  }

  LoadFailure loadFailure(String failureMessage) {
    return LoadFailure(
      failureMessage,
    );
  }
}

/// @nodoc
const $WalletState = _$WalletStateTearOff();

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(List<Wallet> wallets) loadSuccess,
    required TResult Function(String failureMessage) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Wallet> wallets)? loadSuccess,
    TResult Function(String failureMessage)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Wallet> wallets)? loadSuccess,
    TResult Function(String failureMessage)? loadFailure,
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
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
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
    return 'WalletState.initial()';
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
    required TResult Function(List<Wallet> wallets) loadSuccess,
    required TResult Function(String failureMessage) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Wallet> wallets)? loadSuccess,
    TResult Function(String failureMessage)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Wallet> wallets)? loadSuccess,
    TResult Function(String failureMessage)? loadFailure,
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

abstract class _Initial implements WalletState {
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
    extends _$WalletStateCopyWithImpl<$Res>
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
    return 'WalletState.loadingProgress()';
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
    required TResult Function(List<Wallet> wallets) loadSuccess,
    required TResult Function(String failureMessage) loadFailure,
  }) {
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Wallet> wallets)? loadSuccess,
    TResult Function(String failureMessage)? loadFailure,
  }) {
    return loadingProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Wallet> wallets)? loadSuccess,
    TResult Function(String failureMessage)? loadFailure,
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

abstract class LoadingProgress implements WalletState {
  const factory LoadingProgress() = _$LoadingProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Wallet> wallets});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? wallets = freezed,
  }) {
    return _then(LoadSuccess(
      wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.wallets);

  @override
  final List<Wallet> wallets;

  @override
  String toString() {
    return 'WalletState.loadSuccess(wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadSuccess &&
            const DeepCollectionEquality().equals(other.wallets, wallets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallets));

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(List<Wallet> wallets) loadSuccess,
    required TResult Function(String failureMessage) loadFailure,
  }) {
    return loadSuccess(wallets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Wallet> wallets)? loadSuccess,
    TResult Function(String failureMessage)? loadFailure,
  }) {
    return loadSuccess?.call(wallets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Wallet> wallets)? loadSuccess,
    TResult Function(String failureMessage)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(wallets);
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

abstract class LoadSuccess implements WalletState {
  const factory LoadSuccess(List<Wallet> wallets) = _$LoadSuccess;

  List<Wallet> get wallets;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({String failureMessage});
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object? failureMessage = freezed,
  }) {
    return _then(LoadFailure(
      failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.failureMessage);

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'WalletState.loadFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(List<Wallet> wallets) loadSuccess,
    required TResult Function(String failureMessage) loadFailure,
  }) {
    return loadFailure(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Wallet> wallets)? loadSuccess,
    TResult Function(String failureMessage)? loadFailure,
  }) {
    return loadFailure?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(List<Wallet> wallets)? loadSuccess,
    TResult Function(String failureMessage)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failureMessage);
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

abstract class LoadFailure implements WalletState {
  const factory LoadFailure(String failureMessage) = _$LoadFailure;

  String get failureMessage;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
