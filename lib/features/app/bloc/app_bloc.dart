import 'package:bloc/bloc.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/data/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required this.appSettingService})
      : super(
          AppState(
            themeMode: appSettingService.getThemeMode(),
            locale: appSettingService.getLocale(),
          ),
        ) {
    on<ChangeThemeMode>((event, emit) async {
      emit(state.copyWith(themeMode: event.themeMode));
      await appSettingService.setThemeMode(event.themeMode);
      logger.i('ThemeMode change to: ${event.themeMode}');
    });
    on<ChangeLanguage>((event, emit) async {
      emit(state.copyWith(locale: event.locale));
      await appSettingService.setLocale(event.locale);
      logger.i('Language change to: ${event.locale}');
    });
  }

  final AppSettingService appSettingService;
}
