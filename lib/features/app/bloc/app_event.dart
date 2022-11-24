part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.changeThemeMode(ThemeMode themeMode) = ChangeThemeMode;
  const factory AppEvent.changeLanguage(Locale locale) = ChangeLanguage;
}
