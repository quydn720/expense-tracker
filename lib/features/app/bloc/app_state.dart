part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    Locale? locale,
  }) = _AppState;

  const AppState._();
  NumberFormat get numberFormatter =>
      NumberFormat.simpleCurrency(locale: locale?.languageCode);
}
