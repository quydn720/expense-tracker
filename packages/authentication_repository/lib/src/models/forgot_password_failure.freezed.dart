// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ForgotPasswordFailure value) $default, {
    required TResult Function(ForgotPasswordFailure_InvalidEmail value)
        invalidEmail,
    required TResult Function(ForgotPasswordFailure_UserNotFound value)
        userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ForgotPasswordFailure value)? $default, {
    TResult Function(ForgotPasswordFailure_InvalidEmail value)? invalidEmail,
    TResult Function(ForgotPasswordFailure_UserNotFound value)? userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ForgotPasswordFailure value)? $default, {
    TResult Function(ForgotPasswordFailure_InvalidEmail value)? invalidEmail,
    TResult Function(ForgotPasswordFailure_UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordFailureCopyWith<$Res> {
  factory $ForgotPasswordFailureCopyWith(ForgotPasswordFailure value,
          $Res Function(ForgotPasswordFailure) then) =
      _$ForgotPasswordFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordFailureCopyWithImpl<$Res>
    implements $ForgotPasswordFailureCopyWith<$Res> {
  _$ForgotPasswordFailureCopyWithImpl(this._value, this._then);

  final ForgotPasswordFailure _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordFailure) _then;
}

/// @nodoc
abstract class _$$_ForgotPasswordFailureCopyWith<$Res> {
  factory _$$_ForgotPasswordFailureCopyWith(_$_ForgotPasswordFailure value,
          $Res Function(_$_ForgotPasswordFailure) then) =
      __$$_ForgotPasswordFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$_ForgotPasswordFailureCopyWithImpl<$Res>
    extends _$ForgotPasswordFailureCopyWithImpl<$Res>
    implements _$$_ForgotPasswordFailureCopyWith<$Res> {
  __$$_ForgotPasswordFailureCopyWithImpl(_$_ForgotPasswordFailure _value,
      $Res Function(_$_ForgotPasswordFailure) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordFailure));

  @override
  _$_ForgotPasswordFailure get _value =>
      super._value as _$_ForgotPasswordFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ForgotPasswordFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordFailure implements _ForgotPasswordFailure {
  const _$_ForgotPasswordFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ForgotPasswordFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordFailureCopyWith<_$_ForgotPasswordFailure> get copyWith =>
      __$$_ForgotPasswordFailureCopyWithImpl<_$_ForgotPasswordFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
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
    TResult Function(_ForgotPasswordFailure value) $default, {
    required TResult Function(ForgotPasswordFailure_InvalidEmail value)
        invalidEmail,
    required TResult Function(ForgotPasswordFailure_UserNotFound value)
        userNotFound,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ForgotPasswordFailure value)? $default, {
    TResult Function(ForgotPasswordFailure_InvalidEmail value)? invalidEmail,
    TResult Function(ForgotPasswordFailure_UserNotFound value)? userNotFound,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ForgotPasswordFailure value)? $default, {
    TResult Function(ForgotPasswordFailure_InvalidEmail value)? invalidEmail,
    TResult Function(ForgotPasswordFailure_UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordFailure implements ForgotPasswordFailure {
  const factory _ForgotPasswordFailure({final String? message}) =
      _$_ForgotPasswordFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$$_ForgotPasswordFailureCopyWith<_$_ForgotPasswordFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordFailure_InvalidEmailCopyWith<$Res> {
  factory _$$ForgotPasswordFailure_InvalidEmailCopyWith(
          _$ForgotPasswordFailure_InvalidEmail value,
          $Res Function(_$ForgotPasswordFailure_InvalidEmail) then) =
      __$$ForgotPasswordFailure_InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordFailure_InvalidEmailCopyWithImpl<$Res>
    extends _$ForgotPasswordFailureCopyWithImpl<$Res>
    implements _$$ForgotPasswordFailure_InvalidEmailCopyWith<$Res> {
  __$$ForgotPasswordFailure_InvalidEmailCopyWithImpl(
      _$ForgotPasswordFailure_InvalidEmail _value,
      $Res Function(_$ForgotPasswordFailure_InvalidEmail) _then)
      : super(_value, (v) => _then(v as _$ForgotPasswordFailure_InvalidEmail));

  @override
  _$ForgotPasswordFailure_InvalidEmail get _value =>
      super._value as _$ForgotPasswordFailure_InvalidEmail;
}

/// @nodoc

class _$ForgotPasswordFailure_InvalidEmail
    implements ForgotPasswordFailure_InvalidEmail {
  const _$ForgotPasswordFailure_InvalidEmail();

  @override
  String toString() {
    return 'ForgotPasswordFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordFailure_InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
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
    TResult Function(_ForgotPasswordFailure value) $default, {
    required TResult Function(ForgotPasswordFailure_InvalidEmail value)
        invalidEmail,
    required TResult Function(ForgotPasswordFailure_UserNotFound value)
        userNotFound,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ForgotPasswordFailure value)? $default, {
    TResult Function(ForgotPasswordFailure_InvalidEmail value)? invalidEmail,
    TResult Function(ForgotPasswordFailure_UserNotFound value)? userNotFound,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ForgotPasswordFailure value)? $default, {
    TResult Function(ForgotPasswordFailure_InvalidEmail value)? invalidEmail,
    TResult Function(ForgotPasswordFailure_UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordFailure_InvalidEmail
    implements ForgotPasswordFailure {
  const factory ForgotPasswordFailure_InvalidEmail() =
      _$ForgotPasswordFailure_InvalidEmail;
}

/// @nodoc
abstract class _$$ForgotPasswordFailure_UserNotFoundCopyWith<$Res> {
  factory _$$ForgotPasswordFailure_UserNotFoundCopyWith(
          _$ForgotPasswordFailure_UserNotFound value,
          $Res Function(_$ForgotPasswordFailure_UserNotFound) then) =
      __$$ForgotPasswordFailure_UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordFailure_UserNotFoundCopyWithImpl<$Res>
    extends _$ForgotPasswordFailureCopyWithImpl<$Res>
    implements _$$ForgotPasswordFailure_UserNotFoundCopyWith<$Res> {
  __$$ForgotPasswordFailure_UserNotFoundCopyWithImpl(
      _$ForgotPasswordFailure_UserNotFound _value,
      $Res Function(_$ForgotPasswordFailure_UserNotFound) _then)
      : super(_value, (v) => _then(v as _$ForgotPasswordFailure_UserNotFound));

  @override
  _$ForgotPasswordFailure_UserNotFound get _value =>
      super._value as _$ForgotPasswordFailure_UserNotFound;
}

/// @nodoc

class _$ForgotPasswordFailure_UserNotFound
    implements ForgotPasswordFailure_UserNotFound {
  const _$ForgotPasswordFailure_UserNotFound();

  @override
  String toString() {
    return 'ForgotPasswordFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordFailure_UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
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
    TResult Function(_ForgotPasswordFailure value) $default, {
    required TResult Function(ForgotPasswordFailure_InvalidEmail value)
        invalidEmail,
    required TResult Function(ForgotPasswordFailure_UserNotFound value)
        userNotFound,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ForgotPasswordFailure value)? $default, {
    TResult Function(ForgotPasswordFailure_InvalidEmail value)? invalidEmail,
    TResult Function(ForgotPasswordFailure_UserNotFound value)? userNotFound,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ForgotPasswordFailure value)? $default, {
    TResult Function(ForgotPasswordFailure_InvalidEmail value)? invalidEmail,
    TResult Function(ForgotPasswordFailure_UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordFailure_UserNotFound
    implements ForgotPasswordFailure {
  const factory ForgotPasswordFailure_UserNotFound() =
      _$ForgotPasswordFailure_UserNotFound;
}
