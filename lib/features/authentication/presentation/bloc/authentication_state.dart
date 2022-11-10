part of 'authentication_bloc.dart';

@freezed
class AuthenticationState {
  const factory AuthenticationState() = _AuthenticationState;
  const factory AuthenticationState.loading() = _AuthLoadingState;

  const factory AuthenticationState.failed() = _AuthFailedState;

  const factory AuthenticationState.authenticated() = _AuthAuthenticatedState;

  const factory AuthenticationState.unauthenticated() =
      _AuthUnauthenticatedState;
}
