import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/app/bloc/app_bloc.dart';
import 'package:expense_tracker/injector.dart';
import 'package:expense_tracker/routes.dart';
import 'package:expense_tracker/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.authenticationRepository})
      : super(key: key);
  final AuthenticationRepository authenticationRepository;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: BlocProvider(
        create: (context) => AppBloc(
          authenticationRepository: authenticationRepository,
          sharedPreferences: getIt<SharedPreferences>(),
        ),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: theme,
    );
  }
}
