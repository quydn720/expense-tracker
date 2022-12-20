import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/data/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required AppSettingService appSettingService})
      : _appSettingService = appSettingService,
        super(
          AppState(
            themeMode: appSettingService.getThemeMode(),
            locale: appSettingService.getLocale(),
          ),
        ) {
    on<ChangeThemeMode>(_onChangeThemeMode);
    on<ChangeLanguage>(_onChangeLanguage);
  }

  final AppSettingService _appSettingService;

  Future<void> _onChangeLanguage(
    ChangeLanguage event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(locale: event.locale));
    await _appSettingService.setLocale(event.locale);
    logger.i('Language change to: ${event.locale}');
  }

  Future<void> _onChangeThemeMode(
    ChangeThemeMode event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(themeMode: event.themeMode));
    await _appSettingService.setThemeMode(event.themeMode);
    logger.i('ThemeMode change to: ${event.themeMode}');
  }
}
