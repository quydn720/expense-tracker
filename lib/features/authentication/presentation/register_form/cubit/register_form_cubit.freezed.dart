// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  NormalText get name => throw _privateConstructorUsedError;
  EmailInput get email => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  TermsAgreementCheck get termsAgreement => throw _privateConstructorUsedError;
  bool get isObscured => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {NormalText name,
      EmailInput email,
      PasswordInput password,
      TermsAgreementCheck termsAgreement,
      bool isObscured,
      FormzStatus status});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? termsAgreement = null,
    Object? isObscured = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NormalText,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      termsAgreement: null == termsAgreement
          ? _value.termsAgreement
          : termsAgreement // ignore: cast_nullable_to_non_nullable
              as TermsAgreementCheck,
      isObscured: null == isObscured
          ? _value.isObscured
          : isObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NormalText name,
      EmailInput email,
      PasswordInput password,
      TermsAgreementCheck termsAgreement,
      bool isObscured,
      FormzStatus status});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? termsAgreement = null,
    Object? isObscured = null,
    Object? status = null,
  }) {
    return _then(_$_RegisterState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NormalText,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      termsAgreement: null == termsAgreement
          ? _value.termsAgreement
          : termsAgreement // ignore: cast_nullable_to_non_nullable
              as TermsAgreementCheck,
      isObscured: null == isObscured
          ? _value.isObscured
          : isObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {this.name = const NormalText.pure(''),
      this.email = const EmailInput.pure(''),
      this.password = const PasswordInput.pure(''),
      this.termsAgreement = const TermsAgreementCheck.pure(),
      this.isObscured = true,
      this.status = FormzStatus.pure});

  @override
  @JsonKey()
  final NormalText name;
  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final TermsAgreementCheck termsAgreement;
  @override
  @JsonKey()
  final bool isObscured;
  @override
  @JsonKey()
  final FormzStatus status;

  @override
  String toString() {
    return 'RegisterState(name: $name, email: $email, password: $password, termsAgreement: $termsAgreement, isObscured: $isObscured, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.termsAgreement, termsAgreement) ||
                other.termsAgreement == termsAgreement) &&
            (identical(other.isObscured, isObscured) ||
                other.isObscured == isObscured) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, email, password, termsAgreement, isObscured, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final NormalText name,
      final EmailInput email,
      final PasswordInput password,
      final TermsAgreementCheck termsAgreement,
      final bool isObscured,
      final FormzStatus status}) = _$_RegisterState;

  @override
  NormalText get name;
  @override
  EmailInput get email;
  @override
  PasswordInput get password;
  @override
  TermsAgreementCheck get termsAgreement;
  @override
  bool get isObscured;
  @override
  FormzStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
