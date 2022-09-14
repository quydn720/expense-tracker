part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.onUserChanged() = OnUserChanged;
  const factory AppEvent.logoutRequested() = LogoutRequested;
}
