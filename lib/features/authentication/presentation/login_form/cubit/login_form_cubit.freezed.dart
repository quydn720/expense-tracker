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
      _$LoginFormStateCopyWithImpl<$Res, LoginFormState>;
  @useResult
  $Res call(
      {EmailInput email,
      PasswordInput password,
      FormzStatus status,
      bool isObscured,
      LoginFailure? loginFailure});

  $LoginFailureCopyWith<$Res>? get loginFailure;
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res, $Val extends LoginFormState>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? isObscured = null,
    Object? loginFailure = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      isObscured: null == isObscured
          ? _value.isObscured
          : isObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFailure: freezed == loginFailure
          ? _value.loginFailure
          : loginFailure // ignore: cast_nullable_to_non_nullable
              as LoginFailure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginFailureCopyWith<$Res>? get loginFailure {
    if (_value.loginFailure == null) {
      return null;
    }

    return $LoginFailureCopyWith<$Res>(_value.loginFailure!, (value) {
      return _then(_value.copyWith(loginFailure: value) as $Val);
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
  @useResult
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
    extends _$LoginFormStateCopyWithImpl<$Res, _$_LoginFormState>
    implements _$$_LoginFormStateCopyWith<$Res> {
  __$$_LoginFormStateCopyWithImpl(
      _$_LoginFormState _value, $Res Function(_$_LoginFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? isObscured = null,
    Object? loginFailure = freezed,
  }) {
    return _then(_$_LoginFormState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      isObscured: null == isObscured
          ? _value.isObscured
          : isObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFailure: freezed == loginFailure
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
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isObscured, isObscured) ||
                other.isObscured == isObscured) &&
            (identical(other.loginFailure, loginFailure) ||
                other.loginFailure == loginFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, status, isObscured, loginFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
