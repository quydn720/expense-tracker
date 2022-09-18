part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  /// First time open the app state
  const factory AppState.initial() = Initial;
  const factory AppState.authenticated() = Authenticated;

  /// Waiting for user to verify email
  const factory AppState.waitForEmailVerification() = WaitForEmailVerification;
  const factory AppState.unauthenticated() = Unauthenticated;
}
