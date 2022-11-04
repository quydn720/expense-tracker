// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginFormState {
  EmailInput get email => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  bool get isObscured => throw _privateConstructorUsedError;
  LoginFailure? get loginFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailInput email,
      PasswordInput password,
      FormzStatus status,
      bool isObscured,
      LoginFailure? loginFailure});

  $LoginFailureCopyWith<$Res>? get loginFailure;
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  final LoginFormState _value;
  // ignore: unused_field
  final $Res Function(LoginFormState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? isObscured = freezed,
    Object? loginFailure = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      isObscured: isObscured == freezed
          ? _value.isObscured
          : isObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFailure: loginFailure == freezed
          ? _value.loginFailure
          : loginFailure // ignore: cast_nullable_to_non_nullable
              as LoginFailure?,
    ));
  }

  @override
  $LoginFailureCopyWith<$Res>? get loginFailure {
    if (_value.loginFailure == null) {
      return null;
    }

    return $LoginFailureCopyWith<$Res>(_value.loginFailure!, (value) {
      return _then(_value.copyWith(loginFailure: value));
    });
  }
}

/// @nodoc
abstract class _$$_LoginFormStateCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$$_LoginFormStateCopyWith(
          _$_LoginFormState value, $Res Function(_$_LoginFormState) then) =
      __$$_LoginFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailInput email,
      PasswordInput password,
      FormzStatus status,
      bool isObscured,
      LoginFailure? loginFailure});

  @override
  $LoginFailureCopyWith<$Res>? get loginFailure;
}

/// @nodoc
class __$$_LoginFormStateCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$$_LoginFormStateCopyWith<$Res> {
  __$$_LoginFormStateCopyWithImpl(
      _$_LoginFormState _value, $Res Function(_$_LoginFormState) _then)
      : super(_value, (v) => _then(v as _$_LoginFormState));

  @override
  _$_LoginFormState get _value => super._value as _$_LoginFormState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? isObscured = freezed,
    Object? loginFailure = freezed,
  }) {
    return _then(_$_LoginFormState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      isObscured: isObscured == freezed
          ? _value.isObscured
          : isObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFailure: loginFailure == freezed
          ? _value.loginFailure
          : loginFailure // ignore: cast_nullable_to_non_nullable
              as LoginFailure?,
    ));
  }
}

/// @nodoc

class _$_LoginFormState implements _LoginFormState {
  const _$_LoginFormState(
      {this.email = const EmailInput.pure(''),
      this.password = const PasswordInput.pure(''),
      this.status = FormzStatus.pure,
      this.isObscured = true,
      this.loginFailure});

  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final bool isObscured;
  @override
  final LoginFailure? loginFailure;

  @override
  String toString() {
    return 'LoginFormState(email: $email, password: $password, status: $status, isObscured: $isObscured, loginFailure: $loginFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFormState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.isObscured, isObscured) &&
            const DeepCollectionEquality()
                .equals(other.loginFailure, loginFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isObscured),
      const DeepCollectionEquality().hash(loginFailure));

  @JsonKey(ignore: true)
  @override
  _$$_LoginFormStateCopyWith<_$_LoginFormState> get copyWith =>
      __$$_LoginFormStateCopyWithImpl<_$_LoginFormState>(this, _$identity);
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
      {final EmailInput email,
      final PasswordInput password,
      final FormzStatus status,
      final bool isObscured,
      final LoginFailure? loginFailure}) = _$_LoginFormState;

  @override
  EmailInput get email;
  @override
  PasswordInput get password;
  @override
  FormzStatus get status;
  @override
  bool get isObscured;
  @override
  LoginFailure? get loginFailure;
  @override
  @JsonKey(ignore: true)
  _$$_LoginFormStateCopyWith<_$_LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
