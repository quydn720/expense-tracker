part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.onUserChanged(User user) = OnUserChanged;
  const factory AppEvent.onEmailVerified() = OnEmailVerified;
  const factory AppEvent.logoutRequested() = LogoutRequested;
  const factory AppEvent.onboardingCompleted() = OnboardingCompleted;
}
