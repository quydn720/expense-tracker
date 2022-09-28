import 'package:expense_tracker/app_text_theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/locale_controller.dart';
import 'package:expense_tracker/theme_controller.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff7F3DFF)),
        primaryColor: const Color(0xff7F3DFF),
        textTheme: textTheme,
        chipTheme: const ChipThemeData(
          backgroundColor: Color(0xffEEE5FF),
          labelPadding: EdgeInsets.symmetric(horizontal: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            textStyle: const TextStyle(letterSpacing: 0),
            splashFactory: NoSplash.splashFactory,
          ),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(color: Color(0xff212325)),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffF1F1FA)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xff7F3DFF),
        ),
        scaffoldBackgroundColor: Colors.white,
        cardTheme: const CardTheme(elevation: 0, color: Color(0xffFCFCFC)),
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: textTheme,
        primaryColor: const Color(0xff7F3DFF),
        appBarTheme: const AppBarTheme(elevation: 1),
      ),
    );
  }
}
