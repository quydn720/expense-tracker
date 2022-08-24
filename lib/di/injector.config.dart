// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:authentication_repository/authentication_repository.dart'
    as _i7;
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;
import 'package:transaction_repository/transaction_repository.dart' as _i10;

import '../common/cache/local_cache.dart' as _i8;
import 'injector.dart' as _i3;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final devAppLocalPackageModule = _$DevAppLocalPackageModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.singleton<_i3.AppConfigurations>(_i3.DevAppConfigurations(),
      registerFor: {_dev});
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i7.IAuthenticationRepository>(
      () => devAppLocalPackageModule.getDev(),
      registerFor: {_dev});
  gh.factory<_i7.IAuthenticationRepository>(
      () => devAppLocalPackageModule.getProd(),
      registerFor: {_prod});
  gh.factory<_i8.ILocalCache>(() => _i8.InMemoryLocalCache());
  await gh.factoryAsync<_i9.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.factory<String>(() => devAppLocalPackageModule.prodTitle,
      registerFor: {_prod});
  gh.factory<_i10.TransactionRepository>(
      () => devAppLocalPackageModule.getTransactionRepoDev(),
      registerFor: {_dev});
  gh.factory<_i10.TransactionRepository>(
      () => devAppLocalPackageModule.getTransactionRepoProd(),
      registerFor: {_prod});
  return get;
}

class _$FirebaseInjectableModule extends _i3.FirebaseInjectableModule {}

class _$DevAppLocalPackageModule extends _i3.DevAppLocalPackageModule {}

class _$SharedPreferencesModule extends _i3.SharedPreferencesModule {}
