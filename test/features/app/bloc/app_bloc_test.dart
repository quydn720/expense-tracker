import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/data/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAppSettingService extends Mock implements AppSettingService {}

void main() {
  group('AppBloc', () {
    late AppSettingService appSettingService;
    const mockThemeMode = ThemeMode.dark;
    const mockLocale = Locale('en');

    setUp(() {
      appSettingService = MockAppSettingService();
      when(() => appSettingService.getLocale()).thenReturn(mockLocale);
      when(() => appSettingService.getThemeMode()).thenReturn(mockThemeMode);

      when(() => appSettingService.setLocale(mockLocale))
          .thenAnswer((_) async {});
      when(() => appSettingService.setThemeMode(mockThemeMode))
          .thenAnswer((_) async {});
    });

    group('ChangeThemeMode', () {
      blocTest<AppBloc, AppState>(
        'emits state with correct ThemeMode when ChangeThemeMode is added.',
        build: () => AppBloc(appSettingService: appSettingService),
        act: (bloc) {
          return bloc.add(const ChangeThemeMode(mockThemeMode));
        },
        expect: () => const [
          AppState(themeMode: mockThemeMode, locale: mockLocale),
        ],
        verify: (_) {
          verify(() => appSettingService.setThemeMode(mockThemeMode)).called(1);
        },
      );
    });
    group('ChangeLanguage', () {
      blocTest<AppBloc, AppState>(
        'emits state with correct Language when ChangeThemeMode is added.',
        build: () => AppBloc(appSettingService: appSettingService),
        act: (bloc) {
          return bloc.add(const ChangeLanguage(mockLocale));
        },
        expect: () => const [
          AppState(themeMode: mockThemeMode, locale: mockLocale),
        ],
        verify: (_) {
          verify(() => appSettingService.setLocale(mockLocale)).called(1);
        },
      );
    });
  });
}
