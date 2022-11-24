part of 'authentication_bloc.dart';

@freezed
class AuthenticationState {
  const factory AuthenticationState.authenticated() = Authenticated;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
}
