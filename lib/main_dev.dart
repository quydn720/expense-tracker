import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/presentation/app.dart';
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:expense_tracker/firebase_options_dev.dart'
    as firebase_option_dev;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: firebase_option_dev.DefaultFirebaseOptions.currentPlatform,
  );

  await configureInjection(Environment.dev);
  // Bloc.observer = AppBlocObserver();

  runApp(
    MultiProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AppBloc>(), lazy: false),
        BlocProvider(create: (_) => getIt<AuthenticationBloc>(), lazy: false),
        Provider(
          lazy: false,
          create: (_) => getIt<MyDatabase>(),
          dispose: (_, db) => db.close(),
        ),
      ],
      child: App(
        router: getIt<GoRouter>(),
        appName: getIt<AppConfigurations>().appName,
      ),
    ),
  );
}
