import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:expense_tracker/locale_controller.dart';
import 'package:expense_tracker/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'di/injector.dart';
import 'presentations/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.dev);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeController(getIt<ILocalCache>()),
        ),
        ChangeNotifierProvider(
          create: (_) => LocaleController(getIt<ILocalCache>()),
        ),
      ],
      child: const App(),
    ),
  );
}
