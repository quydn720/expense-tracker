part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent {
  const factory AuthenticationEvent() = _AuthenticationEvent;
  const factory AuthenticationEvent.userChanged(User user) = UserChanged;
  const factory AuthenticationEvent.logoutRequested() = LogoutRequested;
}
