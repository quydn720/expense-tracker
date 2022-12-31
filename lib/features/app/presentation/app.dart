import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  App({
    super.key,
    required this.router,
    required this.appName,
    FirebaseDynamicLinks? dynamicLinks,
  }) : dynamicLinks = dynamicLinks ?? FirebaseDynamicLinks.instance;

  final GoRouter router;
  final String appName;
  final FirebaseDynamicLinks dynamicLinks;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    initDynamicLinks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: widget.router,
      debugShowCheckedModeBanner: false,
      title: widget.appName,
      locale: context.watch<AppBloc>().state.locale,
      themeMode: context.watch<AppBloc>().state.themeMode,
      localizationsDelegates: LocalizationFactory.localizationsDelegates,
      supportedLocales: LocalizationFactory.supportedLocales,
      theme: ExpenseTrackerTheme.light,
      darkTheme: ExpenseTrackerTheme.dark,
    );
  }

  void initDynamicLinks() {
    widget.dynamicLinks.onLink.listen((dynamicLinkData) {
      debugPrint('Dynamic Link: ${dynamicLinkData.link.path}');

      widget.router.go(dynamicLinkData.link.path);
    }).onError((error) {
      // Handle errors
    });
  }
}
