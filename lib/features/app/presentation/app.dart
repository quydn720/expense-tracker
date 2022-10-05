import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/features/settings/theme/theme_controller.dart';
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.router,
    required this.appName,
  });

  final GoRouter router;
  final String appName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: appName,
      locale: context.watch<LocaleController>().locale,
      themeMode: context.watch<ThemeController>().themeMode,
      localizationsDelegates: LocalizationFactory.localizationsDelegates,
      supportedLocales: LocalizationFactory.supportedLocales,
      theme: themeData,
      darkTheme: darkThemeData,
    );
  }
}
