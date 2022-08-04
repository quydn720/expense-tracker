import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'di/injector.dart';
import 'presentations/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.dev);

  runApp(const App());
}
