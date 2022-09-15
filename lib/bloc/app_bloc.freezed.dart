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
    required TResult Function() onUserChanged,
    required TResult Function() onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onUserChanged,
    TResult Function()? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onUserChanged,
    TResult Function()? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUserChanged value) onUserChanged,
    required TResult Function(OnEmailVerified value) onEmailVerified,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(OnboardingCompleted value) onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
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
abstract class _$$OnUserChangedCopyWith<$Res> {
  factory _$$OnUserChangedCopyWith(
          _$OnUserChanged value, $Res Function(_$OnUserChanged) then) =
      __$$OnUserChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnUserChangedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$OnUserChangedCopyWith<$Res> {
  __$$OnUserChangedCopyWithImpl(
      _$OnUserChanged _value, $Res Function(_$OnUserChanged) _then)
      : super(_value, (v) => _then(v as _$OnUserChanged));

  @override
  _$OnUserChanged get _value => super._value as _$OnUserChanged;
}

/// @nodoc

class _$OnUserChanged implements OnUserChanged {
  const _$OnUserChanged();

  @override
  String toString() {
    return 'AppEvent.onUserChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnUserChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onUserChanged,
    required TResult Function() onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() onboardingCompleted,
  }) {
    return onUserChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onUserChanged,
    TResult Function()? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? onboardingCompleted,
  }) {
    return onUserChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onUserChanged,
    TResult Function()? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onUserChanged != null) {
      return onUserChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUserChanged value) onUserChanged,
    required TResult Function(OnEmailVerified value) onEmailVerified,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(OnboardingCompleted value) onboardingCompleted,
  }) {
    return onUserChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
  }) {
    return onUserChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onUserChanged != null) {
      return onUserChanged(this);
    }
    return orElse();
  }
}

abstract class OnUserChanged implements AppEvent {
  const factory OnUserChanged() = _$OnUserChanged;
}

/// @nodoc
abstract class _$$OnEmailVerifiedCopyWith<$Res> {
  factory _$$OnEmailVerifiedCopyWith(
          _$OnEmailVerified value, $Res Function(_$OnEmailVerified) then) =
      __$$OnEmailVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnEmailVerifiedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$OnEmailVerifiedCopyWith<$Res> {
  __$$OnEmailVerifiedCopyWithImpl(
      _$OnEmailVerified _value, $Res Function(_$OnEmailVerified) _then)
      : super(_value, (v) => _then(v as _$OnEmailVerified));

  @override
  _$OnEmailVerified get _value => super._value as _$OnEmailVerified;
}

/// @nodoc

class _$OnEmailVerified implements OnEmailVerified {
  const _$OnEmailVerified();

  @override
  String toString() {
    return 'AppEvent.onEmailVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnEmailVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onUserChanged,
    required TResult Function() onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() onboardingCompleted,
  }) {
    return onEmailVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onUserChanged,
    TResult Function()? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? onboardingCompleted,
  }) {
    return onEmailVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onUserChanged,
    TResult Function()? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onEmailVerified != null) {
      return onEmailVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUserChanged value) onUserChanged,
    required TResult Function(OnEmailVerified value) onEmailVerified,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(OnboardingCompleted value) onboardingCompleted,
  }) {
    return onEmailVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
  }) {
    return onEmailVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onEmailVerified != null) {
      return onEmailVerified(this);
    }
    return orElse();
  }
}

abstract class OnEmailVerified implements AppEvent {
  const factory OnEmailVerified() = _$OnEmailVerified;
}

/// @nodoc
abstract class _$$LogoutRequestedCopyWith<$Res> {
  factory _$$LogoutRequestedCopyWith(
          _$LogoutRequested value, $Res Function(_$LogoutRequested) then) =
      __$$LogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$LogoutRequestedCopyWith<$Res> {
  __$$LogoutRequestedCopyWithImpl(
      _$LogoutRequested _value, $Res Function(_$LogoutRequested) _then)
      : super(_value, (v) => _then(v as _$LogoutRequested));

  @override
  _$LogoutRequested get _value => super._value as _$LogoutRequested;
}

/// @nodoc

class _$LogoutRequested implements LogoutRequested {
  const _$LogoutRequested();

  @override
  String toString() {
    return 'AppEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onUserChanged,
    required TResult Function() onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() onboardingCompleted,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onUserChanged,
    TResult Function()? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? onboardingCompleted,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onUserChanged,
    TResult Function()? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUserChanged value) onUserChanged,
    required TResult Function(OnEmailVerified value) onEmailVerified,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(OnboardingCompleted value) onboardingCompleted,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class LogoutRequested implements AppEvent {
  const factory LogoutRequested() = _$LogoutRequested;
}

/// @nodoc
abstract class _$$OnboardingCompletedCopyWith<$Res> {
  factory _$$OnboardingCompletedCopyWith(_$OnboardingCompleted value,
          $Res Function(_$OnboardingCompleted) then) =
      __$$OnboardingCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnboardingCompletedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$OnboardingCompletedCopyWith<$Res> {
  __$$OnboardingCompletedCopyWithImpl(
      _$OnboardingCompleted _value, $Res Function(_$OnboardingCompleted) _then)
      : super(_value, (v) => _then(v as _$OnboardingCompleted));

  @override
  _$OnboardingCompleted get _value => super._value as _$OnboardingCompleted;
}

/// @nodoc

class _$OnboardingCompleted implements OnboardingCompleted {
  const _$OnboardingCompleted();

  @override
  String toString() {
    return 'AppEvent.onboardingCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnboardingCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onUserChanged,
    required TResult Function() onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() onboardingCompleted,
  }) {
    return onboardingCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onUserChanged,
    TResult Function()? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? onboardingCompleted,
  }) {
    return onboardingCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onUserChanged,
    TResult Function()? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onboardingCompleted != null) {
      return onboardingCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUserChanged value) onUserChanged,
    required TResult Function(OnEmailVerified value) onEmailVerified,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(OnboardingCompleted value) onboardingCompleted,
  }) {
    return onboardingCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
  }) {
    return onboardingCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onboardingCompleted != null) {
      return onboardingCompleted(this);
    }
    return orElse();
  }
}

abstract class OnboardingCompleted implements AppEvent {
  const factory OnboardingCompleted() = _$OnboardingCompleted;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() waitForEmailVerification,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? waitForEmailVerification,
    TResult Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? waitForEmailVerification,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() waitForEmailVerification,
    required TResult Function() unauthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? waitForEmailVerification,
    TResult Function()? unauthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? waitForEmailVerification,
    TResult Function()? unauthenticated,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AppState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, (v) => _then(v as _$Authenticated));

  @override
  _$Authenticated get _value => super._value as _$Authenticated;
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AppState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() waitForEmailVerification,
    required TResult Function() unauthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? waitForEmailVerification,
    TResult Function()? unauthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? waitForEmailVerification,
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
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AppState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class _$$WaitForEmailVerificationCopyWith<$Res> {
  factory _$$WaitForEmailVerificationCopyWith(_$WaitForEmailVerification value,
          $Res Function(_$WaitForEmailVerification) then) =
      __$$WaitForEmailVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WaitForEmailVerificationCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements _$$WaitForEmailVerificationCopyWith<$Res> {
  __$$WaitForEmailVerificationCopyWithImpl(_$WaitForEmailVerification _value,
      $Res Function(_$WaitForEmailVerification) _then)
      : super(_value, (v) => _then(v as _$WaitForEmailVerification));

  @override
  _$WaitForEmailVerification get _value =>
      super._value as _$WaitForEmailVerification;
}

/// @nodoc

class _$WaitForEmailVerification implements WaitForEmailVerification {
  const _$WaitForEmailVerification();

  @override
  String toString() {
    return 'AppState.waitForEmailVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitForEmailVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() waitForEmailVerification,
    required TResult Function() unauthenticated,
  }) {
    return waitForEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? waitForEmailVerification,
    TResult Function()? unauthenticated,
  }) {
    return waitForEmailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? waitForEmailVerification,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (waitForEmailVerification != null) {
      return waitForEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return waitForEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
  }) {
    return waitForEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (waitForEmailVerification != null) {
      return waitForEmailVerification(this);
    }
    return orElse();
  }
}

abstract class WaitForEmailVerification implements AppState {
  const factory WaitForEmailVerification() = _$WaitForEmailVerification;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, (v) => _then(v as _$Unauthenticated));

  @override
  _$Unauthenticated get _value => super._value as _$Unauthenticated;
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AppState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() waitForEmailVerification,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? waitForEmailVerification,
    TResult Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? waitForEmailVerification,
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
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AppState {
  const factory Unauthenticated() = _$Unauthenticated;
}
