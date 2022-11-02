import 'package:expense_tracker/features/app/presentation/app.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class TestApp extends StatelessWidget {
  const TestApp({
    super.key,
    required this.providers,
    required this.router,
    required this.dynamicLinks,
  });

  final List<SingleChildWidget> providers;

  final GoRouter router;
  final FirebaseDynamicLinks dynamicLinks;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: App(
        router: router,
        appName: 'Test App',
        dynamicLinks: dynamicLinks,
      ),
    );
  }
}
