import 'package:expense_tracker/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

import 'di/injector.dart';
import 'features/app/presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await configureInjection(Environment.prod);

  runApp(
    MultiProvider(
      providers: const [],
      child: App(
        router: getIt<GoRouter>(),
        appName: getIt<AppConfigurations>().appName,
      ),
    ),
  );
}
