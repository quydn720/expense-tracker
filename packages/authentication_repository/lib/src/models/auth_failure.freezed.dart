// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LogInWithEmailAndPasswordFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value) $default, {
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInWithEmailAndPasswordFailureCopyWith<$Res> {
  factory $LogInWithEmailAndPasswordFailureCopyWith(
          LogInWithEmailAndPasswordFailure value,
          $Res Function(LogInWithEmailAndPasswordFailure) then) =
      _$LogInWithEmailAndPasswordFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInWithEmailAndPasswordFailureCopyWithImpl<$Res>
    implements $LogInWithEmailAndPasswordFailureCopyWith<$Res> {
  _$LogInWithEmailAndPasswordFailureCopyWithImpl(this._value, this._then);

  final LogInWithEmailAndPasswordFailure _value;
  // ignore: unused_field
  final $Res Function(LogInWithEmailAndPasswordFailure) _then;
}

/// @nodoc
abstract class _$$_LogInWithEmailAndPasswordFailureCopyWith<$Res> {
  factory _$$_LogInWithEmailAndPasswordFailureCopyWith(
          _$_LogInWithEmailAndPasswordFailure value,
          $Res Function(_$_LogInWithEmailAndPasswordFailure) then) =
      __$$_LogInWithEmailAndPasswordFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$_LogInWithEmailAndPasswordFailureCopyWithImpl<$Res>
    extends _$LogInWithEmailAndPasswordFailureCopyWithImpl<$Res>
    implements _$$_LogInWithEmailAndPasswordFailureCopyWith<$Res> {
  __$$_LogInWithEmailAndPasswordFailureCopyWithImpl(
      _$_LogInWithEmailAndPasswordFailure _value,
      $Res Function(_$_LogInWithEmailAndPasswordFailure) _then)
      : super(_value, (v) => _then(v as _$_LogInWithEmailAndPasswordFailure));

  @override
  _$_LogInWithEmailAndPasswordFailure get _value =>
      super._value as _$_LogInWithEmailAndPasswordFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_LogInWithEmailAndPasswordFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LogInWithEmailAndPasswordFailure
    implements _LogInWithEmailAndPasswordFailure {
  const _$_LogInWithEmailAndPasswordFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LogInWithEmailAndPasswordFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInWithEmailAndPasswordFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_LogInWithEmailAndPasswordFailureCopyWith<
          _$_LogInWithEmailAndPasswordFailure>
      get copyWith => __$$_LogInWithEmailAndPasswordFailureCopyWithImpl<
          _$_LogInWithEmailAndPasswordFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value) $default, {
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LogInWithEmailAndPasswordFailure
    implements LogInWithEmailAndPasswordFailure {
  const factory _LogInWithEmailAndPasswordFailure({final String? message}) =
      _$_LogInWithEmailAndPasswordFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$$_LogInWithEmailAndPasswordFailureCopyWith<
          _$_LogInWithEmailAndPasswordFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<$Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail value, $Res Function(_$InvalidEmail) then) =
      __$$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<$Res>
    extends _$LogInWithEmailAndPasswordFailureCopyWithImpl<$Res>
    implements _$$InvalidEmailCopyWith<$Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail _value, $Res Function(_$InvalidEmail) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail));

  @override
  _$InvalidEmail get _value => super._value as _$InvalidEmail;
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'LogInWithEmailAndPasswordFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value) $default, {
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements LogInWithEmailAndPasswordFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class _$$UserDisabledCopyWith<$Res> {
  factory _$$UserDisabledCopyWith(
          _$UserDisabled value, $Res Function(_$UserDisabled) then) =
      __$$UserDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDisabledCopyWithImpl<$Res>
    extends _$LogInWithEmailAndPasswordFailureCopyWithImpl<$Res>
    implements _$$UserDisabledCopyWith<$Res> {
  __$$UserDisabledCopyWithImpl(
      _$UserDisabled _value, $Res Function(_$UserDisabled) _then)
      : super(_value, (v) => _then(v as _$UserDisabled));

  @override
  _$UserDisabled get _value => super._value as _$UserDisabled;
}

/// @nodoc

class _$UserDisabled implements UserDisabled {
  const _$UserDisabled();

  @override
  String toString() {
    return 'LogInWithEmailAndPasswordFailure.userDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) {
    return userDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) {
    return userDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value) $default, {
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
  }) {
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
  }) {
    return userDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class UserDisabled implements LogInWithEmailAndPasswordFailure {
  const factory UserDisabled() = _$UserDisabled;
}

/// @nodoc
abstract class _$$UserNotFoundCopyWith<$Res> {
  factory _$$UserNotFoundCopyWith(
          _$UserNotFound value, $Res Function(_$UserNotFound) then) =
      __$$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundCopyWithImpl<$Res>
    extends _$LogInWithEmailAndPasswordFailureCopyWithImpl<$Res>
    implements _$$UserNotFoundCopyWith<$Res> {
  __$$UserNotFoundCopyWithImpl(
      _$UserNotFound _value, $Res Function(_$UserNotFound) _then)
      : super(_value, (v) => _then(v as _$UserNotFound));

  @override
  _$UserNotFound get _value => super._value as _$UserNotFound;
}

/// @nodoc

class _$UserNotFound implements UserNotFound {
  const _$UserNotFound();

  @override
  String toString() {
    return 'LogInWithEmailAndPasswordFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value) $default, {
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements LogInWithEmailAndPasswordFailure {
  const factory UserNotFound() = _$UserNotFound;
}

/// @nodoc
abstract class _$$WrongPasswordCopyWith<$Res> {
  factory _$$WrongPasswordCopyWith(
          _$WrongPassword value, $Res Function(_$WrongPassword) then) =
      __$$WrongPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongPasswordCopyWithImpl<$Res>
    extends _$LogInWithEmailAndPasswordFailureCopyWithImpl<$Res>
    implements _$$WrongPasswordCopyWith<$Res> {
  __$$WrongPasswordCopyWithImpl(
      _$WrongPassword _value, $Res Function(_$WrongPassword) _then)
      : super(_value, (v) => _then(v as _$WrongPassword));

  @override
  _$WrongPassword get _value => super._value as _$WrongPassword;
}

/// @nodoc

class _$WrongPassword implements WrongPassword {
  const _$WrongPassword();

  @override
  String toString() {
    return 'LogInWithEmailAndPasswordFailure.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WrongPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() invalidEmail,
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
  }) {
    return wrongPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value) $default, {
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogInWithEmailAndPasswordFailure value)? $default, {
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class WrongPassword implements LogInWithEmailAndPasswordFailure {
  const factory WrongPassword() = _$WrongPassword;
}
