// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() appLogOutRequested,
    required TResult Function(User user) appUserChanged,
    required TResult Function(String avt) userChangeAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? appLogOutRequested,
    TResult Function(User user)? appUserChanged,
    TResult Function(String avt)? userChangeAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? appLogOutRequested,
    TResult Function(User user)? appUserChanged,
    TResult Function(String avt)? userChangeAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(AppLogOutRequested value) appLogOutRequested,
    required TResult Function(AppUserChanged value) appUserChanged,
    required TResult Function(UserChangeAvatar value) userChangeAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppLogOutRequested value)? appLogOutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    TResult Function(UserChangeAvatar value)? userChangeAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppLogOutRequested value)? appLogOutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    TResult Function(UserChangeAvatar value)? userChangeAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$$AppStartedCopyWith<$Res> {
  factory _$$AppStartedCopyWith(
          _$AppStarted value, $Res Function(_$AppStarted) then) =
      __$$AppStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$AppStartedCopyWith<$Res> {
  __$$AppStartedCopyWithImpl(
      _$AppStarted _value, $Res Function(_$AppStarted) _then)
      : super(_value, (v) => _then(v as _$AppStarted));

  @override
  _$AppStarted get _value => super._value as _$AppStarted;
}

/// @nodoc

class _$AppStarted implements AppStarted {
  const _$AppStarted();

  @override
  String toString() {
    return 'AppEvent.appStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() appLogOutRequested,
    required TResult Function(User user) appUserChanged,
    required TResult Function(String avt) userChangeAvatar,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? appLogOutRequested,
    TResult Function(User user)? appUserChanged,
    TResult Function(String avt)? userChangeAvatar,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? appLogOutRequested,
    TResult Function(User user)? appUserChanged,
    TResult Function(String avt)? userChangeAvatar,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(AppLogOutRequested value) appLogOutRequested,
    required TResult Function(AppUserChanged value) appUserChanged,
    required TResult Function(UserChangeAvatar value) userChangeAvatar,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppLogOutRequested value)? appLogOutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    TResult Function(UserChangeAvatar value)? userChangeAvatar,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppLogOutRequested value)? appLogOutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    TResult Function(UserChangeAvatar value)? userChangeAvatar,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class AppStarted implements AppEvent {
  const factory AppStarted() = _$AppStarted;
}

/// @nodoc
abstract class _$$AppLogOutRequestedCopyWith<$Res> {
  factory _$$AppLogOutRequestedCopyWith(_$AppLogOutRequested value,
          $Res Function(_$AppLogOutRequested) then) =
      __$$AppLogOutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLogOutRequestedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$AppLogOutRequestedCopyWith<$Res> {
  __$$AppLogOutRequestedCopyWithImpl(
      _$AppLogOutRequested _value, $Res Function(_$AppLogOutRequested) _then)
      : super(_value, (v) => _then(v as _$AppLogOutRequested));

  @override
  _$AppLogOutRequested get _value => super._value as _$AppLogOutRequested;
}

/// @nodoc

class _$AppLogOutRequested implements AppLogOutRequested {
  const _$AppLogOutRequested();

  @override
  String toString() {
    return 'AppEvent.appLogOutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLogOutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() appLogOutRequested,
    required TResult Function(User user) appUserChanged,
    required TResult Function(String avt) userChangeAvatar,
  }) {
    return appLogOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? appLogOutRequested,
    TResult Function(User user)? appUserChanged,
    TResult Function(String avt)? userChangeAvatar,
  }) {
    return appLogOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? appLogOutRequested,
    TResult Function(User user)? appUserChanged,
    TResult Function(String avt)? userChangeAvatar,
    required TResult orElse(),
  }) {
    if (appLogOutRequested != null) {
      return appLogOutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(AppLogOutRequested value) appLogOutRequested,
    required TResult Function(AppUserChanged value) appUserChanged,
    required TResult Function(UserChangeAvatar value) userChangeAvatar,
  }) {
    return appLogOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppLogOutRequested value)? appLogOutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    TResult Function(UserChangeAvatar value)? userChangeAvatar,
  }) {
    return appLogOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppLogOutRequested value)? appLogOutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    TResult Function(UserChangeAvatar value)? userChangeAvatar,
    required TResult orElse(),
  }) {
    if (appLogOutRequested != null) {
      return appLogOutRequested(this);
    }
    return orElse();
  }
}

abstract class AppLogOutRequested implements AppEvent {
  const factory AppLogOutRequested() = _$AppLogOutRequested;
}

/// @nodoc
abstract class _$$AppUserChangedCopyWith<$Res> {
  factory _$$AppUserChangedCopyWith(
          _$AppUserChanged value, $Res Function(_$AppUserChanged) then) =
      __$$AppUserChangedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class __$$AppUserChangedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$AppUserChangedCopyWith<$Res> {
  __$$AppUserChangedCopyWithImpl(
      _$AppUserChanged _value, $Res Function(_$AppUserChanged) _then)
      : super(_value, (v) => _then(v as _$AppUserChanged));

  @override
  _$AppUserChanged get _value => super._value as _$AppUserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AppUserChanged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AppUserChanged implements AppUserChanged {
  const _$AppUserChanged(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AppEvent.appUserChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserChanged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$AppUserChangedCopyWith<_$AppUserChanged> get copyWith =>
      __$$AppUserChangedCopyWithImpl<_$AppUserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() appLogOutRequested,
    required TResult Function(User user) appUserChanged,
    required TResult Function(String avt) userChangeAvatar,
  }) {
    return appUserChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? appLogOutRequested,
    TResult Function(User user)? appUserChanged,
    TResult Function(String avt)? userChangeAvatar,
  }) {
    return appUserChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? appLogOutRequested,
    TResult Function(User user)? appUserChanged,
    TResult Function(String avt)? userChangeAvatar,
    required TResult orElse(),
  }) {
    if (appUserChanged != null) {
      return appUserChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(AppLogOutRequested value) appLogOutRequested,
    required TResult Function(AppUserChanged value) appUserChanged,
    required TResult Function(UserChangeAvatar value) userChangeAvatar,
  }) {
    return appUserChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppLogOutRequested value)? appLogOutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    TResult Function(UserChangeAvatar value)? userChangeAvatar,
  }) {
    return appUserChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppLogOutRequested value)? appLogOutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    TResult Function(UserChangeAvatar value)? userChangeAvatar,
    required TResult orElse(),
  }) {
    if (appUserChanged != null) {
      return appUserChanged(this);
    }
    return orElse();
  }
}

abstract class AppUserChanged implements AppEvent {
  const factory AppUserChanged(final User user) = _$AppUserChanged;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AppUserChangedCopyWith<_$AppUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserChangeAvatarCopyWith<$Res> {
  factory _$$UserChangeAvatarCopyWith(
          _$UserChangeAvatar value, $Res Function(_$UserChangeAvatar) then) =
      __$$UserChangeAvatarCopyWithImpl<$Res>;
  $Res call({String avt});
}

/// @nodoc
class __$$UserChangeAvatarCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$UserChangeAvatarCopyWith<$Res> {
  __$$UserChangeAvatarCopyWithImpl(
      _$UserChangeAvatar _value, $Res Function(_$UserChangeAvatar) _then)
      : super(_value, (v) => _then(v as _$UserChangeAvatar));

  @override
  _$UserChangeAvatar get _value => super._value as _$UserChangeAvatar;

  @override
  $Res call({
    Object? avt = freezed,
  }) {
    return _then(_$UserChangeAvatar(
      avt == freezed
          ? _value.avt
          : avt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserChangeAvatar implements UserChangeAvatar {
  const _$UserChangeAvatar(this.avt);

  @override
  final String avt;

  @override
  String toString() {
    return 'AppEvent.userChangeAvatar(avt: $avt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserChangeAvatar &&
            const DeepCollectionEquality().equals(other.avt, avt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(avt));

  @JsonKey(ignore: true)
  @override
  _$$UserChangeAvatarCopyWith<_$UserChangeAvatar> get copyWith =>
      __$$UserChangeAvatarCopyWithImpl<_$UserChangeAvatar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() appLogOutRequested,
    required TResult Function(User user) appUserChanged,
    required TResult Function(String avt) userChangeAvatar,
  }) {
    return userChangeAvatar(avt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? appLogOutRequested,
    TResult Function(User user)? appUserChanged,
    TResult Function(String avt)? userChangeAvatar,
  }) {
    return userChangeAvatar?.call(avt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? appLogOutRequested,
    TResult Function(User user)? appUserChanged,
    TResult Function(String avt)? userChangeAvatar,
    required TResult orElse(),
  }) {
    if (userChangeAvatar != null) {
      return userChangeAvatar(avt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(AppLogOutRequested value) appLogOutRequested,
    required TResult Function(AppUserChanged value) appUserChanged,
    required TResult Function(UserChangeAvatar value) userChangeAvatar,
  }) {
    return userChangeAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppLogOutRequested value)? appLogOutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    TResult Function(UserChangeAvatar value)? userChangeAvatar,
  }) {
    return userChangeAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppLogOutRequested value)? appLogOutRequested,
    TResult Function(AppUserChanged value)? appUserChanged,
    TResult Function(UserChangeAvatar value)? userChangeAvatar,
    required TResult orElse(),
  }) {
    if (userChangeAvatar != null) {
      return userChangeAvatar(this);
    }
    return orElse();
  }
}

abstract class UserChangeAvatar implements AppEvent {
  const factory UserChangeAvatar(final String avt) = _$UserChangeAvatar;

  String get avt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UserChangeAvatarCopyWith<_$UserChangeAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  AppStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AppStatus status) unauthenticated,
    required TResult Function(AppStatus status, User user) authenticated,
    required TResult Function(AppStatus status) firstTimeOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? unauthenticated,
    TResult Function(AppStatus status, User user)? authenticated,
    TResult Function(AppStatus status)? firstTimeOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? unauthenticated,
    TResult Function(AppStatus status, User user)? authenticated,
    TResult Function(AppStatus status)? firstTimeOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(FirstTimeOpened value) firstTimeOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(FirstTimeOpened value)? firstTimeOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(FirstTimeOpened value)? firstTimeOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({AppStatus status});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({User user, AppStatus status});
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, (v) => _then(v as _$Unauthenticated));

  @override
  _$Unauthenticated get _value => super._value as _$Unauthenticated;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
  }) {
    return _then(_$Unauthenticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$Unauthenticated extends Unauthenticated {
  const _$Unauthenticated(
      {this.user = User.empty, this.status = AppStatus.unauthenticated})
      : super._();

  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  final AppStatus status;

  @override
  String toString() {
    return 'AppState.unauthenticated(user: $user, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unauthenticated &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$UnauthenticatedCopyWith<_$Unauthenticated> get copyWith =>
      __$$UnauthenticatedCopyWithImpl<_$Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AppStatus status) unauthenticated,
    required TResult Function(AppStatus status, User user) authenticated,
    required TResult Function(AppStatus status) firstTimeOpened,
  }) {
    return unauthenticated(user, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? unauthenticated,
    TResult Function(AppStatus status, User user)? authenticated,
    TResult Function(AppStatus status)? firstTimeOpened,
  }) {
    return unauthenticated?.call(user, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? unauthenticated,
    TResult Function(AppStatus status, User user)? authenticated,
    TResult Function(AppStatus status)? firstTimeOpened,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(user, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(FirstTimeOpened value) firstTimeOpened,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(FirstTimeOpened value)? firstTimeOpened,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(FirstTimeOpened value)? firstTimeOpened,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated extends AppState {
  const factory Unauthenticated({final User user, final AppStatus status}) =
      _$Unauthenticated;
  const Unauthenticated._() : super._();

  User get user => throw _privateConstructorUsedError;
  @override
  AppStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UnauthenticatedCopyWith<_$Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({AppStatus status, User user});
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, (v) => _then(v as _$Authenticated));

  @override
  _$Authenticated get _value => super._value as _$Authenticated;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_$Authenticated(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$Authenticated extends Authenticated {
  const _$Authenticated(
      {this.status = AppStatus.authenticated, required this.user})
      : super._();

  @override
  @JsonKey()
  final AppStatus status;
  @override
  final User user;

  @override
  String toString() {
    return 'AppState.authenticated(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authenticated &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      __$$AuthenticatedCopyWithImpl<_$Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AppStatus status) unauthenticated,
    required TResult Function(AppStatus status, User user) authenticated,
    required TResult Function(AppStatus status) firstTimeOpened,
  }) {
    return authenticated(status, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? unauthenticated,
    TResult Function(AppStatus status, User user)? authenticated,
    TResult Function(AppStatus status)? firstTimeOpened,
  }) {
    return authenticated?.call(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? unauthenticated,
    TResult Function(AppStatus status, User user)? authenticated,
    TResult Function(AppStatus status)? firstTimeOpened,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(FirstTimeOpened value) firstTimeOpened,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(FirstTimeOpened value)? firstTimeOpened,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(FirstTimeOpened value)? firstTimeOpened,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated extends AppState {
  const factory Authenticated(
      {final AppStatus status, required final User user}) = _$Authenticated;
  const Authenticated._() : super._();

  @override
  AppStatus get status => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstTimeOpenedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$FirstTimeOpenedCopyWith(
          _$FirstTimeOpened value, $Res Function(_$FirstTimeOpened) then) =
      __$$FirstTimeOpenedCopyWithImpl<$Res>;
  @override
  $Res call({AppStatus status});
}

/// @nodoc
class __$$FirstTimeOpenedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$FirstTimeOpenedCopyWith<$Res> {
  __$$FirstTimeOpenedCopyWithImpl(
      _$FirstTimeOpened _value, $Res Function(_$FirstTimeOpened) _then)
      : super(_value, (v) => _then(v as _$FirstTimeOpened));

  @override
  _$FirstTimeOpened get _value => super._value as _$FirstTimeOpened;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$FirstTimeOpened(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$FirstTimeOpened extends FirstTimeOpened {
  const _$FirstTimeOpened({this.status = AppStatus.firstTimeOpened})
      : super._();

  @override
  @JsonKey()
  final AppStatus status;

  @override
  String toString() {
    return 'AppState.firstTimeOpened(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstTimeOpened &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$FirstTimeOpenedCopyWith<_$FirstTimeOpened> get copyWith =>
      __$$FirstTimeOpenedCopyWithImpl<_$FirstTimeOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AppStatus status) unauthenticated,
    required TResult Function(AppStatus status, User user) authenticated,
    required TResult Function(AppStatus status) firstTimeOpened,
  }) {
    return firstTimeOpened(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? unauthenticated,
    TResult Function(AppStatus status, User user)? authenticated,
    TResult Function(AppStatus status)? firstTimeOpened,
  }) {
    return firstTimeOpened?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? unauthenticated,
    TResult Function(AppStatus status, User user)? authenticated,
    TResult Function(AppStatus status)? firstTimeOpened,
    required TResult orElse(),
  }) {
    if (firstTimeOpened != null) {
      return firstTimeOpened(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(FirstTimeOpened value) firstTimeOpened,
  }) {
    return firstTimeOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(FirstTimeOpened value)? firstTimeOpened,
  }) {
    return firstTimeOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(FirstTimeOpened value)? firstTimeOpened,
    required TResult orElse(),
  }) {
    if (firstTimeOpened != null) {
      return firstTimeOpened(this);
    }
    return orElse();
  }
}

abstract class FirstTimeOpened extends AppState {
  const factory FirstTimeOpened({final AppStatus status}) = _$FirstTimeOpened;
  const FirstTimeOpened._() : super._();

  @override
  AppStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$FirstTimeOpenedCopyWith<_$FirstTimeOpened> get copyWith =>
      throw _privateConstructorUsedError;
}
