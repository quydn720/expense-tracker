import 'package:authentication_repository/authentication_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as firebase;
import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/transaction/data/repositories/fake_transaction_repository.dart';
import 'package:expense_tracker/features/transaction/data/repositories/firebase_transaction_repository.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';

import 'package:expense_tracker/routes/router.dart';
import 'package:expense_tracker/user_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;
final logger = Logger(printer: PrettyPrinter(methodCount: 0));

@InjectableInit(
  initializerName: r'$initGetIt', // default
  asExtension: false, // default
)
Future<void> configureInjection(String env) async {
  await $initGetIt(getIt, environment: env);
}

@module
abstract class SharedPreferencesModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @Named('isOnboardingCompleted')
  bool get isOnboardingCompeted =>
      getIt<UserPreferences>().isOnboardingCompleted;
}

/// Wrapper for instantiate 3rd library in get_it
@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  firebase.FirebaseFirestore get firestore =>
      firebase.FirebaseFirestore.instance;
}

@module
abstract class DevAppLocalPackageModule {
  @dev
  @Named('init_location')
  String get devInitialLocation => '/';
  @prod
  @Named('init_location')
  String get initialLocation => '/';

  @lazySingleton
  GoRouter appRouterDev(@Named('init_location') String init) =>
      router(initialLocation: init, auth: getIt());

  @dev
  @lazySingleton
  IAuthenticationRepository getDev() => AuthenticationRepository();

  @prod
  @lazySingleton
  IAuthenticationRepository getProd() => AuthenticationRepository();

  @dev
  @lazySingleton
  ITransactionRepository getTransactionRepoDev() =>
      FakeTransactionRepository([]);

  @prod
  @lazySingleton
  ITransactionRepository getTransactionRepoProd() {
    return FirebaseTransactionRepository();
  }
}

@module
abstract class DriftDatabase {
  @Injectable(as: QueryExecutor)
  LazyDatabase get queryExecutor => openConnection();
}

abstract class AppConfigurations {
  String get appName;
}

@Singleton(as: AppConfigurations, env: [Environment.dev, Environment.prod])
class DevAppConfigurations implements AppConfigurations {
  @override
  String get appName => '[Dev] Expense Tracker';
}
