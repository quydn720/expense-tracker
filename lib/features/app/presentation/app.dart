import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/features/settings/theme/theme_controller.dart';
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  const App({
    super.key,
    required this.router,
    required this.appName,
  });

  final GoRouter router;
  final String appName;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
      debugPrint('Dynamic Link: ${dynamicLinkData.link.path}');

      widget.router.go(dynamicLinkData.link.path);
      // context.go(dynamicLinkData.link.path);
    }).onError((error) {
      // Handle errors
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: widget.router,
      debugShowCheckedModeBanner: false,
      title: widget.appName,
      locale: context.watch<LocaleController>().locale,
      themeMode: context.watch<ThemeController>().themeMode,
      localizationsDelegates: LocalizationFactory.localizationsDelegates,
      supportedLocales: LocalizationFactory.supportedLocales,
      theme: themeData,
      darkTheme: darkThemeData,
    );
  }
}
