import 'package:authentication_repository/authentication_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transaction_repository/transaction_repository.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) async {
  await $initGetIt(getIt, environment: env);
}

@module
abstract class SharedPreferencesModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

/// Wrapper for instantiate 3rd library in get_it
@module
@prod
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}

@module
abstract class DevAppLocalPackageModule {
  @dev
  IAuthenticationRepository getDev() => AuthenticateRepo();

  @prod
  IAuthenticationRepository getProd() => AuthenticationRepository();

  @dev
  TransactionRepository getTransactionRepoDev() => FakeTransactionRepo();

  @prod
  TransactionRepository getTransactionRepoProd() {
    return FirebaseTransactionRepository(
      cachedTransactions: {},
      authenticationRepository: getIt(),
    );
  }

  @dev
  String get devTitle => '[Dev] Expense Tracker';
  @prod
  String get prodTitle => '[Prod] Expense Tracker';
}

// @module
// abstract class DevAppLocalPackageModule {
//   @dev
//   IAuthenticationRepository getDev() => AuthenticateRepo();

//   @dev
//   TransactionRepository getTransactionRepoDev() => FakeTransactionRepo();
// }

// @module
// abstract class ProdAppLocalPackageModule {
//   IAuthenticationRepository getProd() => AuthenticationRepository();

//   TransactionRepository getTransactionRepoProd() {
//     return FirebaseTransactionRepository(
//       cachedTransactions: {},
//       authenticationRepository: getIt(),
//     );
//   }
// }
