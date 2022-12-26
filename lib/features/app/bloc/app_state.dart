part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    Locale? locale,
  }) = _AppState;

  const AppState._();

  // TODO(quy): decimal digits default is 2
  NumberFormat get numberFormatter => NumberFormat.simpleCurrency(
        locale: locale?.languageCode,
        decimalDigits: 0,
      );
  DateFormat get dateFormatter => DateFormat.yMMMd(locale?.languageCode);
}
