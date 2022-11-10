part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent {
  const factory AuthenticationEvent() = _AuthenticationEvent;
  const factory AuthenticationEvent.login({
    required String email,
    required String password,
  }) = _AuthenticationEventLogin;
  const factory AuthenticationEvent.logout() = _AuthenticationEventLogout;
}
