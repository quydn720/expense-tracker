import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;
@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}

@module
abstract class SharedPreferencesModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
