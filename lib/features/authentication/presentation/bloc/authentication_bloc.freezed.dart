// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value) $default, {
    required TResult Function(_AuthenticationEventLogin value) login,
    required TResult Function(_AuthenticationEventLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(_AuthenticationEventLogin value)? login,
    TResult Function(_AuthenticationEventLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(_AuthenticationEventLogin value)? login,
    TResult Function(_AuthenticationEventLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$_AuthenticationEventCopyWith<$Res> {
  factory _$$_AuthenticationEventCopyWith(_$_AuthenticationEvent value,
          $Res Function(_$_AuthenticationEvent) then) =
      __$$_AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_AuthenticationEventCopyWith<$Res> {
  __$$_AuthenticationEventCopyWithImpl(_$_AuthenticationEvent _value,
      $Res Function(_$_AuthenticationEvent) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationEvent));

  @override
  _$_AuthenticationEvent get _value => super._value as _$_AuthenticationEvent;
}

/// @nodoc

class _$_AuthenticationEvent implements _AuthenticationEvent {
  const _$_AuthenticationEvent();

  @override
  String toString() {
    return 'AuthenticationEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthenticationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value) $default, {
    required TResult Function(_AuthenticationEventLogin value) login,
    required TResult Function(_AuthenticationEventLogout value) logout,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(_AuthenticationEventLogin value)? login,
    TResult Function(_AuthenticationEventLogout value)? logout,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(_AuthenticationEventLogin value)? login,
    TResult Function(_AuthenticationEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationEvent implements AuthenticationEvent {
  const factory _AuthenticationEvent() = _$_AuthenticationEvent;
}

/// @nodoc
abstract class _$$_AuthenticationEventLoginCopyWith<$Res> {
  factory _$$_AuthenticationEventLoginCopyWith(
          _$_AuthenticationEventLogin value,
          $Res Function(_$_AuthenticationEventLogin) then) =
      __$$_AuthenticationEventLoginCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthenticationEventLoginCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_AuthenticationEventLoginCopyWith<$Res> {
  __$$_AuthenticationEventLoginCopyWithImpl(_$_AuthenticationEventLogin _value,
      $Res Function(_$_AuthenticationEventLogin) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationEventLogin));

  @override
  _$_AuthenticationEventLogin get _value =>
      super._value as _$_AuthenticationEventLogin;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AuthenticationEventLogin(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthenticationEventLogin implements _AuthenticationEventLogin {
  const _$_AuthenticationEventLogin(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationEventLogin &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationEventLoginCopyWith<_$_AuthenticationEventLogin>
      get copyWith => __$$_AuthenticationEventLoginCopyWithImpl<
          _$_AuthenticationEventLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value) $default, {
    required TResult Function(_AuthenticationEventLogin value) login,
    required TResult Function(_AuthenticationEventLogout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(_AuthenticationEventLogin value)? login,
    TResult Function(_AuthenticationEventLogout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(_AuthenticationEventLogin value)? login,
    TResult Function(_AuthenticationEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationEventLogin implements AuthenticationEvent {
  const factory _AuthenticationEventLogin(
      {required final String email,
      required final String password}) = _$_AuthenticationEventLogin;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_AuthenticationEventLoginCopyWith<_$_AuthenticationEventLogin>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticationEventLogoutCopyWith<$Res> {
  factory _$$_AuthenticationEventLogoutCopyWith(
          _$_AuthenticationEventLogout value,
          $Res Function(_$_AuthenticationEventLogout) then) =
      __$$_AuthenticationEventLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationEventLogoutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_AuthenticationEventLogoutCopyWith<$Res> {
  __$$_AuthenticationEventLogoutCopyWithImpl(
      _$_AuthenticationEventLogout _value,
      $Res Function(_$_AuthenticationEventLogout) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationEventLogout));

  @override
  _$_AuthenticationEventLogout get _value =>
      super._value as _$_AuthenticationEventLogout;
}

/// @nodoc

class _$_AuthenticationEventLogout implements _AuthenticationEventLogout {
  const _$_AuthenticationEventLogout();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationEventLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value) $default, {
    required TResult Function(_AuthenticationEventLogin value) login,
    required TResult Function(_AuthenticationEventLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(_AuthenticationEventLogin value)? login,
    TResult Function(_AuthenticationEventLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(_AuthenticationEventLogin value)? login,
    TResult Function(_AuthenticationEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationEventLogout implements AuthenticationEvent {
  const factory _AuthenticationEventLogout() = _$_AuthenticationEventLogout;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$$_AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationStateCopyWith(_$_AuthenticationState value,
          $Res Function(_$_AuthenticationState) then) =
      __$$_AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthenticationStateCopyWith<$Res> {
  __$$_AuthenticationStateCopyWithImpl(_$_AuthenticationState _value,
      $Res Function(_$_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationState));

  @override
  _$_AuthenticationState get _value => super._value as _$_AuthenticationState;
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState();

  @override
  String toString() {
    return 'AuthenticationState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthenticationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState() = _$_AuthenticationState;
}

/// @nodoc
abstract class _$$_AuthLoadingStateCopyWith<$Res> {
  factory _$$_AuthLoadingStateCopyWith(
          _$_AuthLoadingState value, $Res Function(_$_AuthLoadingState) then) =
      __$$_AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthLoadingStateCopyWith<$Res> {
  __$$_AuthLoadingStateCopyWithImpl(
      _$_AuthLoadingState _value, $Res Function(_$_AuthLoadingState) _then)
      : super(_value, (v) => _then(v as _$_AuthLoadingState));

  @override
  _$_AuthLoadingState get _value => super._value as _$_AuthLoadingState;
}

/// @nodoc

class _$_AuthLoadingState implements _AuthLoadingState {
  const _$_AuthLoadingState();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthLoadingState implements AuthenticationState {
  const factory _AuthLoadingState() = _$_AuthLoadingState;
}

/// @nodoc
abstract class _$$_AuthFailedStateCopyWith<$Res> {
  factory _$$_AuthFailedStateCopyWith(
          _$_AuthFailedState value, $Res Function(_$_AuthFailedState) then) =
      __$$_AuthFailedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthFailedStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthFailedStateCopyWith<$Res> {
  __$$_AuthFailedStateCopyWithImpl(
      _$_AuthFailedState _value, $Res Function(_$_AuthFailedState) _then)
      : super(_value, (v) => _then(v as _$_AuthFailedState));

  @override
  _$_AuthFailedState get _value => super._value as _$_AuthFailedState;
}

/// @nodoc

class _$_AuthFailedState implements _AuthFailedState {
  const _$_AuthFailedState();

  @override
  String toString() {
    return 'AuthenticationState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthFailedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _AuthFailedState implements AuthenticationState {
  const factory _AuthFailedState() = _$_AuthFailedState;
}

/// @nodoc
abstract class _$$_AuthAuthenticatedStateCopyWith<$Res> {
  factory _$$_AuthAuthenticatedStateCopyWith(_$_AuthAuthenticatedState value,
          $Res Function(_$_AuthAuthenticatedState) then) =
      __$$_AuthAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthAuthenticatedStateCopyWith<$Res> {
  __$$_AuthAuthenticatedStateCopyWithImpl(_$_AuthAuthenticatedState _value,
      $Res Function(_$_AuthAuthenticatedState) _then)
      : super(_value, (v) => _then(v as _$_AuthAuthenticatedState));

  @override
  _$_AuthAuthenticatedState get _value =>
      super._value as _$_AuthAuthenticatedState;
}

/// @nodoc

class _$_AuthAuthenticatedState implements _AuthAuthenticatedState {
  const _$_AuthAuthenticatedState();

  @override
  String toString() {
    return 'AuthenticationState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthenticatedState implements AuthenticationState {
  const factory _AuthAuthenticatedState() = _$_AuthAuthenticatedState;
}

/// @nodoc
abstract class _$$_AuthUnauthenticatedStateCopyWith<$Res> {
  factory _$$_AuthUnauthenticatedStateCopyWith(
          _$_AuthUnauthenticatedState value,
          $Res Function(_$_AuthUnauthenticatedState) then) =
      __$$_AuthUnauthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthUnauthenticatedStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthUnauthenticatedStateCopyWith<$Res> {
  __$$_AuthUnauthenticatedStateCopyWithImpl(_$_AuthUnauthenticatedState _value,
      $Res Function(_$_AuthUnauthenticatedState) _then)
      : super(_value, (v) => _then(v as _$_AuthUnauthenticatedState));

  @override
  _$_AuthUnauthenticatedState get _value =>
      super._value as _$_AuthUnauthenticatedState;
}

/// @nodoc

class _$_AuthUnauthenticatedState implements _AuthUnauthenticatedState {
  const _$_AuthUnauthenticatedState();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthUnauthenticatedState implements AuthenticationState {
  const factory _AuthUnauthenticatedState() = _$_AuthUnauthenticatedState;
}
