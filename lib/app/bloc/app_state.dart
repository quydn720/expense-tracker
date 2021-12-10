part of 'app_bloc.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
  firstTimeOpened,
}

@freezed
class AppState with _$AppState {
  const factory AppState.unauthenticated({
    @Default(User.empty) User user,
    @Default(AppStatus.unauthenticated) AppStatus status,
  }) = Unauthenticated;

  const factory AppState.authenticated({
    @Default(AppStatus.authenticated) AppStatus status,
    required User user,
  }) = Authenticated;

  const factory AppState.firstTimeOpened({
    @Default(AppStatus.firstTimeOpened) AppStatus status,
  }) = FirstTimeOpened;

  const AppState._();
}
