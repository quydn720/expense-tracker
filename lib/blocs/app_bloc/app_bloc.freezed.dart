// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  AppStarted appStarted() {
    return const AppStarted();
  }

  AppLogOutRequested appLogOutRequested() {
    return const AppLogOutRequested();
  }

  AppUserChanged appUserChanged(User user) {
    return AppUserChanged(
      user,
    );
  }

  UserChangeAvatar userChangeAvatar(String avt) {
    return UserChangeAvatar(
      avt,
    );
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

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
abstract class $AppStartedCopyWith<$Res> {
  factory $AppStartedCopyWith(
          AppStarted value, $Res Function(AppStarted) then) =
      _$AppStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStartedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $AppStartedCopyWith<$Res> {
  _$AppStartedCopyWithImpl(AppStarted _value, $Res Function(AppStarted) _then)
      : super(_value, (v) => _then(v as AppStarted));

  @override
  AppStarted get _value => super._value as AppStarted;
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
        (other.runtimeType == runtimeType && other is AppStarted);
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
abstract class $AppLogOutRequestedCopyWith<$Res> {
  factory $AppLogOutRequestedCopyWith(
          AppLogOutRequested value, $Res Function(AppLogOutRequested) then) =
      _$AppLogOutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLogOutRequestedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements $AppLogOutRequestedCopyWith<$Res> {
  _$AppLogOutRequestedCopyWithImpl(
      AppLogOutRequested _value, $Res Function(AppLogOutRequested) _then)
      : super(_value, (v) => _then(v as AppLogOutRequested));

  @override
  AppLogOutRequested get _value => super._value as AppLogOutRequested;
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
        (other.runtimeType == runtimeType && other is AppLogOutRequested);
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
abstract class $AppUserChangedCopyWith<$Res> {
  factory $AppUserChangedCopyWith(
          AppUserChanged value, $Res Function(AppUserChanged) then) =
      _$AppUserChangedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AppUserChangedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $AppUserChangedCopyWith<$Res> {
  _$AppUserChangedCopyWithImpl(
      AppUserChanged _value, $Res Function(AppUserChanged) _then)
      : super(_value, (v) => _then(v as AppUserChanged));

  @override
  AppUserChanged get _value => super._value as AppUserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AppUserChanged(
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
            other is AppUserChanged &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $AppUserChangedCopyWith<AppUserChanged> get copyWith =>
      _$AppUserChangedCopyWithImpl<AppUserChanged>(this, _$identity);

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
  const factory AppUserChanged(User user) = _$AppUserChanged;

  User get user;
  @JsonKey(ignore: true)
  $AppUserChangedCopyWith<AppUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserChangeAvatarCopyWith<$Res> {
  factory $UserChangeAvatarCopyWith(
          UserChangeAvatar value, $Res Function(UserChangeAvatar) then) =
      _$UserChangeAvatarCopyWithImpl<$Res>;
  $Res call({String avt});
}

/// @nodoc
class _$UserChangeAvatarCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $UserChangeAvatarCopyWith<$Res> {
  _$UserChangeAvatarCopyWithImpl(
      UserChangeAvatar _value, $Res Function(UserChangeAvatar) _then)
      : super(_value, (v) => _then(v as UserChangeAvatar));

  @override
  UserChangeAvatar get _value => super._value as UserChangeAvatar;

  @override
  $Res call({
    Object? avt = freezed,
  }) {
    return _then(UserChangeAvatar(
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
            other is UserChangeAvatar &&
            (identical(other.avt, avt) || other.avt == avt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avt);

  @JsonKey(ignore: true)
  @override
  $UserChangeAvatarCopyWith<UserChangeAvatar> get copyWith =>
      _$UserChangeAvatarCopyWithImpl<UserChangeAvatar>(this, _$identity);

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
  const factory UserChangeAvatar(String avt) = _$UserChangeAvatar;

  String get avt;
  @JsonKey(ignore: true)
  $UserChangeAvatarCopyWith<UserChangeAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  Unauthenticated unauthenticated(
      {User user = User.empty, AppStatus status = AppStatus.unauthenticated}) {
    return Unauthenticated(
      user: user,
      status: status,
    );
  }

  Authenticated authenticated(
      {AppStatus status = AppStatus.authenticated, required User user}) {
    return Authenticated(
      status: status,
      user: user,
    );
  }

  FirstTimeOpened firstTimeOpened(
      {AppStatus status = AppStatus.firstTimeOpened}) {
    return FirstTimeOpened(
      status: status,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

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
abstract class $UnauthenticatedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({User user, AppStatus status});
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
  }) {
    return _then(Unauthenticated(
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

  @JsonKey(defaultValue: User.empty)
  @override
  final User user;
  @JsonKey(defaultValue: AppStatus.unauthenticated)
  @override
  final AppStatus status;

  @override
  String toString() {
    return 'AppState.unauthenticated(user: $user, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Unauthenticated &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status);

  @JsonKey(ignore: true)
  @override
  $UnauthenticatedCopyWith<Unauthenticated> get copyWith =>
      _$UnauthenticatedCopyWithImpl<Unauthenticated>(this, _$identity);

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
  const factory Unauthenticated({User user, AppStatus status}) =
      _$Unauthenticated;
  const Unauthenticated._() : super._();

  User get user;
  @override
  AppStatus get status;
  @override
  @JsonKey(ignore: true)
  $UnauthenticatedCopyWith<Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({AppStatus status, User user});
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(Authenticated(
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

  @JsonKey(defaultValue: AppStatus.authenticated)
  @override
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
            other is Authenticated &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

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
  const factory Authenticated({AppStatus status, required User user}) =
      _$Authenticated;
  const Authenticated._() : super._();

  @override
  AppStatus get status;
  User get user;
  @override
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstTimeOpenedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory $FirstTimeOpenedCopyWith(
          FirstTimeOpened value, $Res Function(FirstTimeOpened) then) =
      _$FirstTimeOpenedCopyWithImpl<$Res>;
  @override
  $Res call({AppStatus status});
}

/// @nodoc
class _$FirstTimeOpenedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $FirstTimeOpenedCopyWith<$Res> {
  _$FirstTimeOpenedCopyWithImpl(
      FirstTimeOpened _value, $Res Function(FirstTimeOpened) _then)
      : super(_value, (v) => _then(v as FirstTimeOpened));

  @override
  FirstTimeOpened get _value => super._value as FirstTimeOpened;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(FirstTimeOpened(
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

  @JsonKey(defaultValue: AppStatus.firstTimeOpened)
  @override
  final AppStatus status;

  @override
  String toString() {
    return 'AppState.firstTimeOpened(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirstTimeOpened &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  $FirstTimeOpenedCopyWith<FirstTimeOpened> get copyWith =>
      _$FirstTimeOpenedCopyWithImpl<FirstTimeOpened>(this, _$identity);

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
  const factory FirstTimeOpened({AppStatus status}) = _$FirstTimeOpened;
  const FirstTimeOpened._() : super._();

  @override
  AppStatus get status;
  @override
  @JsonKey(ignore: true)
  $FirstTimeOpenedCopyWith<FirstTimeOpened> get copyWith =>
      throw _privateConstructorUsedError;
}
