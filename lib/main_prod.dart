import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app.dart';
import 'di/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO(quy): try presolve
  // await Firebase.initializeApp();

  await configureInjection(Environment.prod);

  // final authenticationRepository = AuthenticateRepo();
  // await authenticationRepository.user.first;

  runApp(const App());
}
