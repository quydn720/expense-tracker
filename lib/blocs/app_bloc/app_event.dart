part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.appStarted() = AppStarted;
  const factory AppEvent.appLogOutRequested() = AppLogOutRequested;
  const factory AppEvent.appUserChanged(User user) = AppUserChanged;
}
