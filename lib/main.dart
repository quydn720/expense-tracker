import 'package:expense_tracker/injector.dart';
import 'package:expense_tracker/presentations/pages/splash/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'app/auth/auth_bloc.dart';
import 'constants.dart';
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
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
        initialRoute: SplashPage.routeName,
        routes: routes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Inter',
          primaryColor: kPrimaryColor,
          elevatedButtonTheme: elevatedButtonTheme,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffF1F1FA)),
              borderRadius: BorderRadius.circular(kDefaultRadius),
            ),
          ),
          scaffoldBackgroundColor: kLight100,
          appBarTheme: appBarTheme,
        ),
      ),
    );
  }
}

const appBarTheme = AppBarTheme(
  elevation: 0,
  centerTitle: true,
  backgroundColor: kLight100,
);

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kDefaultRadius),
    ),
  ),
);
