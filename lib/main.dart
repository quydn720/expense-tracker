import 'package:expense_tracker/injector.dart';
import 'package:expense_tracker/presentations/pages/splash/splash_page.dart';
import 'package:expense_tracker/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'app/auth/auth_bloc.dart';
import 'routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return getIt<AuthBloc>()
              ..add(
                const AuthEvent.authCheckRequested(),
              );
          },
        ),
      ],
      child: MaterialApp(
        initialRoute: SplashPage.routeName,
        routes: routes,
        debugShowCheckedModeBanner: false,
        theme: theme,
      ),
    );
  }
}
