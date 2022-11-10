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
    required TResult Function(User user) onUserChanged,
    required TResult Function(User user) onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() logoutBottomSheetOpened,
    required TResult Function() logoutBottomSheetCanceled,
    required TResult Function() onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUserChanged value) onUserChanged,
    required TResult Function(OnEmailVerified value) onEmailVerified,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(LogoutBottomSheetOpened value)
        logoutBottomSheetOpened,
    required TResult Function(LogoutBottomSheetCanceled value)
        logoutBottomSheetCanceled,
    required TResult Function(OnboardingCompleted value) onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
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
  $Res call({User user});
}

/// @nodoc
class __$$OnUserChangedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$OnUserChangedCopyWith<$Res> {
  __$$OnUserChangedCopyWithImpl(
      _$OnUserChanged _value, $Res Function(_$OnUserChanged) _then)
      : super(_value, (v) => _then(v as _$OnUserChanged));

  @override
  _$OnUserChanged get _value => super._value as _$OnUserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$OnUserChanged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$OnUserChanged implements OnUserChanged {
  const _$OnUserChanged(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AppEvent.onUserChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUserChanged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$OnUserChangedCopyWith<_$OnUserChanged> get copyWith =>
      __$$OnUserChangedCopyWithImpl<_$OnUserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) onUserChanged,
    required TResult Function(User user) onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() logoutBottomSheetOpened,
    required TResult Function() logoutBottomSheetCanceled,
    required TResult Function() onboardingCompleted,
  }) {
    return onUserChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
  }) {
    return onUserChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onUserChanged != null) {
      return onUserChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUserChanged value) onUserChanged,
    required TResult Function(OnEmailVerified value) onEmailVerified,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(LogoutBottomSheetOpened value)
        logoutBottomSheetOpened,
    required TResult Function(LogoutBottomSheetCanceled value)
        logoutBottomSheetCanceled,
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
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
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
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
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
  const factory OnUserChanged(final User user) = _$OnUserChanged;

  User get user;
  @JsonKey(ignore: true)
  _$$OnUserChangedCopyWith<_$OnUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnEmailVerifiedCopyWith<$Res> {
  factory _$$OnEmailVerifiedCopyWith(
          _$OnEmailVerified value, $Res Function(_$OnEmailVerified) then) =
      __$$OnEmailVerifiedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class __$$OnEmailVerifiedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$OnEmailVerifiedCopyWith<$Res> {
  __$$OnEmailVerifiedCopyWithImpl(
      _$OnEmailVerified _value, $Res Function(_$OnEmailVerified) _then)
      : super(_value, (v) => _then(v as _$OnEmailVerified));

  @override
  _$OnEmailVerified get _value => super._value as _$OnEmailVerified;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$OnEmailVerified(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$OnEmailVerified implements OnEmailVerified {
  const _$OnEmailVerified(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AppEvent.onEmailVerified(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEmailVerified &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$OnEmailVerifiedCopyWith<_$OnEmailVerified> get copyWith =>
      __$$OnEmailVerifiedCopyWithImpl<_$OnEmailVerified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) onUserChanged,
    required TResult Function(User user) onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() logoutBottomSheetOpened,
    required TResult Function() logoutBottomSheetCanceled,
    required TResult Function() onboardingCompleted,
  }) {
    return onEmailVerified(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
  }) {
    return onEmailVerified?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onEmailVerified != null) {
      return onEmailVerified(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUserChanged value) onUserChanged,
    required TResult Function(OnEmailVerified value) onEmailVerified,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(LogoutBottomSheetOpened value)
        logoutBottomSheetOpened,
    required TResult Function(LogoutBottomSheetCanceled value)
        logoutBottomSheetCanceled,
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
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
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
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
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
  const factory OnEmailVerified(final User user) = _$OnEmailVerified;

  User get user;
  @JsonKey(ignore: true)
  _$$OnEmailVerifiedCopyWith<_$OnEmailVerified> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(User user) onUserChanged,
    required TResult Function(User user) onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() logoutBottomSheetOpened,
    required TResult Function() logoutBottomSheetCanceled,
    required TResult Function() onboardingCompleted,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
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
    required TResult Function(LogoutBottomSheetOpened value)
        logoutBottomSheetOpened,
    required TResult Function(LogoutBottomSheetCanceled value)
        logoutBottomSheetCanceled,
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
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
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
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
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
abstract class _$$LogoutBottomSheetOpenedCopyWith<$Res> {
  factory _$$LogoutBottomSheetOpenedCopyWith(_$LogoutBottomSheetOpened value,
          $Res Function(_$LogoutBottomSheetOpened) then) =
      __$$LogoutBottomSheetOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutBottomSheetOpenedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$LogoutBottomSheetOpenedCopyWith<$Res> {
  __$$LogoutBottomSheetOpenedCopyWithImpl(_$LogoutBottomSheetOpened _value,
      $Res Function(_$LogoutBottomSheetOpened) _then)
      : super(_value, (v) => _then(v as _$LogoutBottomSheetOpened));

  @override
  _$LogoutBottomSheetOpened get _value =>
      super._value as _$LogoutBottomSheetOpened;
}

/// @nodoc

class _$LogoutBottomSheetOpened implements LogoutBottomSheetOpened {
  const _$LogoutBottomSheetOpened();

  @override
  String toString() {
    return 'AppEvent.logoutBottomSheetOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutBottomSheetOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) onUserChanged,
    required TResult Function(User user) onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() logoutBottomSheetOpened,
    required TResult Function() logoutBottomSheetCanceled,
    required TResult Function() onboardingCompleted,
  }) {
    return logoutBottomSheetOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
  }) {
    return logoutBottomSheetOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (logoutBottomSheetOpened != null) {
      return logoutBottomSheetOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUserChanged value) onUserChanged,
    required TResult Function(OnEmailVerified value) onEmailVerified,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(LogoutBottomSheetOpened value)
        logoutBottomSheetOpened,
    required TResult Function(LogoutBottomSheetCanceled value)
        logoutBottomSheetCanceled,
    required TResult Function(OnboardingCompleted value) onboardingCompleted,
  }) {
    return logoutBottomSheetOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
  }) {
    return logoutBottomSheetOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (logoutBottomSheetOpened != null) {
      return logoutBottomSheetOpened(this);
    }
    return orElse();
  }
}

abstract class LogoutBottomSheetOpened implements AppEvent {
  const factory LogoutBottomSheetOpened() = _$LogoutBottomSheetOpened;
}

/// @nodoc
abstract class _$$LogoutBottomSheetCanceledCopyWith<$Res> {
  factory _$$LogoutBottomSheetCanceledCopyWith(
          _$LogoutBottomSheetCanceled value,
          $Res Function(_$LogoutBottomSheetCanceled) then) =
      __$$LogoutBottomSheetCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutBottomSheetCanceledCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$LogoutBottomSheetCanceledCopyWith<$Res> {
  __$$LogoutBottomSheetCanceledCopyWithImpl(_$LogoutBottomSheetCanceled _value,
      $Res Function(_$LogoutBottomSheetCanceled) _then)
      : super(_value, (v) => _then(v as _$LogoutBottomSheetCanceled));

  @override
  _$LogoutBottomSheetCanceled get _value =>
      super._value as _$LogoutBottomSheetCanceled;
}

/// @nodoc

class _$LogoutBottomSheetCanceled implements LogoutBottomSheetCanceled {
  const _$LogoutBottomSheetCanceled();

  @override
  String toString() {
    return 'AppEvent.logoutBottomSheetCanceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutBottomSheetCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) onUserChanged,
    required TResult Function(User user) onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() logoutBottomSheetOpened,
    required TResult Function() logoutBottomSheetCanceled,
    required TResult Function() onboardingCompleted,
  }) {
    return logoutBottomSheetCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
  }) {
    return logoutBottomSheetCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (logoutBottomSheetCanceled != null) {
      return logoutBottomSheetCanceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUserChanged value) onUserChanged,
    required TResult Function(OnEmailVerified value) onEmailVerified,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(LogoutBottomSheetOpened value)
        logoutBottomSheetOpened,
    required TResult Function(LogoutBottomSheetCanceled value)
        logoutBottomSheetCanceled,
    required TResult Function(OnboardingCompleted value) onboardingCompleted,
  }) {
    return logoutBottomSheetCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
  }) {
    return logoutBottomSheetCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUserChanged value)? onUserChanged,
    TResult Function(OnEmailVerified value)? onEmailVerified,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
    TResult Function(OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (logoutBottomSheetCanceled != null) {
      return logoutBottomSheetCanceled(this);
    }
    return orElse();
  }
}

abstract class LogoutBottomSheetCanceled implements AppEvent {
  const factory LogoutBottomSheetCanceled() = _$LogoutBottomSheetCanceled;
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
    required TResult Function(User user) onUserChanged,
    required TResult Function(User user) onEmailVerified,
    required TResult Function() logoutRequested,
    required TResult Function() logoutBottomSheetOpened,
    required TResult Function() logoutBottomSheetCanceled,
    required TResult Function() onboardingCompleted,
  }) {
    return onboardingCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
    TResult Function()? onboardingCompleted,
  }) {
    return onboardingCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? onUserChanged,
    TResult Function(User user)? onEmailVerified,
    TResult Function()? logoutRequested,
    TResult Function()? logoutBottomSheetOpened,
    TResult Function()? logoutBottomSheetCanceled,
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
    required TResult Function(LogoutBottomSheetOpened value)
        logoutBottomSheetOpened,
    required TResult Function(LogoutBottomSheetCanceled value)
        logoutBottomSheetCanceled,
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
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
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
    TResult Function(LogoutBottomSheetOpened value)? logoutBottomSheetOpened,
    TResult Function(LogoutBottomSheetCanceled value)?
        logoutBottomSheetCanceled,
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
    required TResult Function() firstTimeOpenApp,
    required TResult Function() authenticated,
    required TResult Function(User user) waitForEmailVerification,
    required TResult Function() unauthenticated,
    required TResult Function() showLogoutBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstTimeOpenApp value) firstTimeOpenApp,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ShowLogoutBottomSheet value)
        showLogoutBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
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
abstract class _$$FirstTimeOpenAppCopyWith<$Res> {
  factory _$$FirstTimeOpenAppCopyWith(
          _$FirstTimeOpenApp value, $Res Function(_$FirstTimeOpenApp) then) =
      __$$FirstTimeOpenAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirstTimeOpenAppCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements _$$FirstTimeOpenAppCopyWith<$Res> {
  __$$FirstTimeOpenAppCopyWithImpl(
      _$FirstTimeOpenApp _value, $Res Function(_$FirstTimeOpenApp) _then)
      : super(_value, (v) => _then(v as _$FirstTimeOpenApp));

  @override
  _$FirstTimeOpenApp get _value => super._value as _$FirstTimeOpenApp;
}

/// @nodoc

class _$FirstTimeOpenApp implements FirstTimeOpenApp {
  const _$FirstTimeOpenApp();

  @override
  String toString() {
    return 'AppState.firstTimeOpenApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FirstTimeOpenApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstTimeOpenApp,
    required TResult Function() authenticated,
    required TResult Function(User user) waitForEmailVerification,
    required TResult Function() unauthenticated,
    required TResult Function() showLogoutBottomSheet,
  }) {
    return firstTimeOpenApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
  }) {
    return firstTimeOpenApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
    required TResult orElse(),
  }) {
    if (firstTimeOpenApp != null) {
      return firstTimeOpenApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstTimeOpenApp value) firstTimeOpenApp,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ShowLogoutBottomSheet value)
        showLogoutBottomSheet,
  }) {
    return firstTimeOpenApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
  }) {
    return firstTimeOpenApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
    required TResult orElse(),
  }) {
    if (firstTimeOpenApp != null) {
      return firstTimeOpenApp(this);
    }
    return orElse();
  }
}

abstract class FirstTimeOpenApp implements AppState {
  const factory FirstTimeOpenApp() = _$FirstTimeOpenApp;
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
    required TResult Function() firstTimeOpenApp,
    required TResult Function() authenticated,
    required TResult Function(User user) waitForEmailVerification,
    required TResult Function() unauthenticated,
    required TResult Function() showLogoutBottomSheet,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
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
    required TResult Function(FirstTimeOpenApp value) firstTimeOpenApp,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ShowLogoutBottomSheet value)
        showLogoutBottomSheet,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
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
  $Res call({User user});
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

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$WaitForEmailVerification(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$WaitForEmailVerification implements WaitForEmailVerification {
  const _$WaitForEmailVerification(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AppState.waitForEmailVerification(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitForEmailVerification &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$WaitForEmailVerificationCopyWith<_$WaitForEmailVerification>
      get copyWith =>
          __$$WaitForEmailVerificationCopyWithImpl<_$WaitForEmailVerification>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstTimeOpenApp,
    required TResult Function() authenticated,
    required TResult Function(User user) waitForEmailVerification,
    required TResult Function() unauthenticated,
    required TResult Function() showLogoutBottomSheet,
  }) {
    return waitForEmailVerification(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
  }) {
    return waitForEmailVerification?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
    required TResult orElse(),
  }) {
    if (waitForEmailVerification != null) {
      return waitForEmailVerification(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstTimeOpenApp value) firstTimeOpenApp,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ShowLogoutBottomSheet value)
        showLogoutBottomSheet,
  }) {
    return waitForEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
  }) {
    return waitForEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
    required TResult orElse(),
  }) {
    if (waitForEmailVerification != null) {
      return waitForEmailVerification(this);
    }
    return orElse();
  }
}

abstract class WaitForEmailVerification implements AppState {
  const factory WaitForEmailVerification(final User user) =
      _$WaitForEmailVerification;

  User get user;
  @JsonKey(ignore: true)
  _$$WaitForEmailVerificationCopyWith<_$WaitForEmailVerification>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function() firstTimeOpenApp,
    required TResult Function() authenticated,
    required TResult Function(User user) waitForEmailVerification,
    required TResult Function() unauthenticated,
    required TResult Function() showLogoutBottomSheet,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
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
    required TResult Function(FirstTimeOpenApp value) firstTimeOpenApp,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ShowLogoutBottomSheet value)
        showLogoutBottomSheet,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
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

/// @nodoc
abstract class _$$ShowLogoutBottomSheetCopyWith<$Res> {
  factory _$$ShowLogoutBottomSheetCopyWith(_$ShowLogoutBottomSheet value,
          $Res Function(_$ShowLogoutBottomSheet) then) =
      __$$ShowLogoutBottomSheetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowLogoutBottomSheetCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements _$$ShowLogoutBottomSheetCopyWith<$Res> {
  __$$ShowLogoutBottomSheetCopyWithImpl(_$ShowLogoutBottomSheet _value,
      $Res Function(_$ShowLogoutBottomSheet) _then)
      : super(_value, (v) => _then(v as _$ShowLogoutBottomSheet));

  @override
  _$ShowLogoutBottomSheet get _value => super._value as _$ShowLogoutBottomSheet;
}

/// @nodoc

class _$ShowLogoutBottomSheet implements ShowLogoutBottomSheet {
  const _$ShowLogoutBottomSheet();

  @override
  String toString() {
    return 'AppState.showLogoutBottomSheet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowLogoutBottomSheet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstTimeOpenApp,
    required TResult Function() authenticated,
    required TResult Function(User user) waitForEmailVerification,
    required TResult Function() unauthenticated,
    required TResult Function() showLogoutBottomSheet,
  }) {
    return showLogoutBottomSheet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
  }) {
    return showLogoutBottomSheet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstTimeOpenApp,
    TResult Function()? authenticated,
    TResult Function(User user)? waitForEmailVerification,
    TResult Function()? unauthenticated,
    TResult Function()? showLogoutBottomSheet,
    required TResult orElse(),
  }) {
    if (showLogoutBottomSheet != null) {
      return showLogoutBottomSheet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstTimeOpenApp value) firstTimeOpenApp,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(WaitForEmailVerification value)
        waitForEmailVerification,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ShowLogoutBottomSheet value)
        showLogoutBottomSheet,
  }) {
    return showLogoutBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
  }) {
    return showLogoutBottomSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstTimeOpenApp value)? firstTimeOpenApp,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(WaitForEmailVerification value)? waitForEmailVerification,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ShowLogoutBottomSheet value)? showLogoutBottomSheet,
    required TResult orElse(),
  }) {
    if (showLogoutBottomSheet != null) {
      return showLogoutBottomSheet(this);
    }
    return orElse();
  }
}

abstract class ShowLogoutBottomSheet implements AppState {
  const factory ShowLogoutBottomSheet() = _$ShowLogoutBottomSheet;
}
