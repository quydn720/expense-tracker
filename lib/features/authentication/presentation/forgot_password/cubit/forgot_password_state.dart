part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required String email,
    @Default(Status.initital) Status status,
    ForgotPasswordFailure? failure,
  }) = _ForgotPasswordState;
}

enum Status { initital, loading, success, failure }
