// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupStateTearOff {
  const _$SignupStateTearOff();

  _SignupState call(
      {String? errorMessage,
      Email email = const Email.pure(),
      Password password = const Password.pure(),
      ConfirmedPassword confirmedPassword = const ConfirmedPassword.pure(),
      FormzStatus status = FormzStatus.pure}) {
    return _SignupState(
      errorMessage: errorMessage,
      email: email,
      password: password,
      confirmedPassword: confirmedPassword,
      status: status,
    );
  }
}

/// @nodoc
const $SignupState = _$SignupStateTearOff();

/// @nodoc
mixin _$SignupState {
  String? get errorMessage => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  ConfirmedPassword get confirmedPassword => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
  $Res call(
      {String? errorMessage,
      Email email,
      Password password,
      ConfirmedPassword confirmedPassword,
      FormzStatus status});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmedPassword = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(
          _SignupState value, $Res Function(_SignupState) then) =
      __$SignupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? errorMessage,
      Email email,
      Password password,
      ConfirmedPassword confirmedPassword,
      FormzStatus status});
}

/// @nodoc
class __$SignupStateCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(
      _SignupState _value, $Res Function(_SignupState) _then)
      : super(_value, (v) => _then(v as _SignupState));

  @override
  _SignupState get _value => super._value as _SignupState;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmedPassword = freezed,
    Object? status = freezed,
  }) {
    return _then(_SignupState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {this.errorMessage,
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.confirmedPassword = const ConfirmedPassword.pure(),
      this.status = FormzStatus.pure});

  @override
  final String? errorMessage;
  @JsonKey(defaultValue: const Email.pure())
  @override
  final Email email;
  @JsonKey(defaultValue: const Password.pure())
  @override
  final Password password;
  @JsonKey(defaultValue: const ConfirmedPassword.pure())
  @override
  final ConfirmedPassword confirmedPassword;
  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'SignupState(errorMessage: $errorMessage, email: $email, password: $password, confirmedPassword: $confirmedPassword, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, errorMessage, email, password, confirmedPassword, status);

  @JsonKey(ignore: true)
  @override
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {String? errorMessage,
      Email email,
      Password password,
      ConfirmedPassword confirmedPassword,
      FormzStatus status}) = _$_SignupState;

  @override
  String? get errorMessage;
  @override
  Email get email;
  @override
  Password get password;
  @override
  ConfirmedPassword get confirmedPassword;
  @override
  FormzStatus get status;
  @override
  @JsonKey(ignore: true)
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
