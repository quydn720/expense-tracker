import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injector.dart';
import 'presentations/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);

  final authenticationRepository = AuthenticateRepo();
  await authenticationRepository.user.first;

  runApp(App(authenticationRepository: authenticationRepository));
}
