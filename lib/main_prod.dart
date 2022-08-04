import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'di/injector.dart';
import 'presentations/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();

  await configureInjection(Environment.prod);

  // final authenticationRepository = AuthenticateRepo();
  // await authenticationRepository.user.first;

  runApp(const App());
}