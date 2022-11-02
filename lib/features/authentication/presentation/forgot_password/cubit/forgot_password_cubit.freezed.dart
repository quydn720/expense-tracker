// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordState {
  String get email => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  ForgotPasswordFailure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res>;
  $Res call({String email, Status status, ForgotPasswordFailure? failure});

  $ForgotPasswordFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordFailure?,
    ));
  }

  @override
  $ForgotPasswordFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $ForgotPasswordFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$_ForgotPasswordStateCopyWith(_$_ForgotPasswordState value,
          $Res Function(_$_ForgotPasswordState) then) =
      __$$_ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call({String email, Status status, ForgotPasswordFailure? failure});

  @override
  $ForgotPasswordFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$$_ForgotPasswordStateCopyWith<$Res> {
  __$$_ForgotPasswordStateCopyWithImpl(_$_ForgotPasswordState _value,
      $Res Function(_$_ForgotPasswordState) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordState));

  @override
  _$_ForgotPasswordState get _value => super._value as _$_ForgotPasswordState;

  @override
  $Res call({
    Object? email = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_ForgotPasswordState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordFailure?,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState implements _ForgotPasswordState {
  const _$_ForgotPasswordState(
      {required this.email, this.status = Status.initital, this.failure});

  @override
  final String email;
  @override
  @JsonKey()
  final Status status;
  @override
  final ForgotPasswordFailure? failure;

  @override
  String toString() {
    return 'ForgotPasswordState(email: $email, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      __$$_ForgotPasswordStateCopyWithImpl<_$_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {required final String email,
      final Status status,
      final ForgotPasswordFailure? failure}) = _$_ForgotPasswordState;

  @override
  String get email;
  @override
  Status get status;
  @override
  ForgotPasswordFailure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
