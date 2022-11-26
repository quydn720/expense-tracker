// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i7;
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:expense_tracker/common/cache/local_cache.dart' as _i8;
import 'package:expense_tracker/di/injector.dart' as _i3;
import 'package:expense_tracker/features/app/bloc/app_bloc.dart' as _i24;
import 'package:expense_tracker/features/app/data/app_settings.dart' as _i17;
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart'
    as _i20;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart'
    as _i9;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart'
    as _i10;
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart'
    as _i15;
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart'
    as _i18;
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart'
    as _i23;
import 'package:expense_tracker/features/edit_transaction/domain/usecases/add_transaction_use_case.dart'
    as _i16;
import 'package:expense_tracker/features/edit_transaction/presentation/bloc/edit_transaction_bloc.dart'
    as _i19;
import 'package:expense_tracker/features/settings/theme/theme_controller.dart'
    as _i12;
import 'package:expense_tracker/features/transaction_overview/domain/usecases/load_transactions.dart'
    as _i22;
import 'package:expense_tracker/user_preferences.dart' as _i14;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i21;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;
import 'package:transaction_repository/transaction_repository.dart' as _i13;

const String _dev = 'dev';
const String _prod = 'prod';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final devAppLocalPackageModule = _$DevAppLocalPackageModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.singleton<_i3.AppConfigurations>(
    _i3.DevAppConfigurations(),
    registerFor: {
      _dev,
      _prod,
    },
  );
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getDev(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i7.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getProd(),
    registerFor: {_prod},
  );
  gh.factory<_i8.ILocalCache>(() => _i8.InMemoryLocalCache());
  gh.factory<_i9.LoginWithEmailAndPwUseCase>(() =>
      _i9.LoginWithEmailAndPwUseCase(
          auth: gh<_i7.IAuthenticationRepository>()));
  gh.factory<_i10.LoginWithGoogleUseCase>(() =>
      _i10.LoginWithGoogleUseCase(auth: gh<_i7.IAuthenticationRepository>()));
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.devInitialLocation,
    instanceName: 'init_location',
    registerFor: {_dev},
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.initialLocation,
    instanceName: 'init_location',
    registerFor: {_prod},
  );
  gh.singleton<_i12.ThemeController>(
      _i12.ThemeController(gh<_i8.ILocalCache>()));
  gh.lazySingleton<_i13.TransactionRepository>(
    () => devAppLocalPackageModule.getTransactionRepoDev(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i13.TransactionRepository>(
    () => devAppLocalPackageModule.getTransactionRepoProd(),
    registerFor: {_prod},
  );
  gh.singleton<_i14.UserPreferences>(
      _i14.UserPreferences(prefs: gh<_i11.SharedPreferences>()));
  gh.factory<_i15.VerificationService>(() => _i15.VerificationService());
  gh.factory<bool>(
    () => sharedPreferencesModule.isOnboardingCompeted,
    instanceName: 'isOnboardingCompleted',
  );
  gh.factory<_i16.AddTransactionUseCase>(
      () => _i16.AddTransactionUseCase(gh<_i13.TransactionRepository>()));
  gh.factory<_i17.AppSettingService>(
      () => _i17.AppSettingService(gh<_i11.SharedPreferences>()));
  gh.lazySingleton<_i18.AuthenticationBloc>(
      () => _i18.AuthenticationBloc(gh<_i7.IAuthenticationRepository>()));
  gh.factoryParam<_i19.EditTransactionBloc, _i13.Transaction?, dynamic>((
    initialTransaction,
    _,
  ) =>
      _i19.EditTransactionBloc(
        gh<_i16.AddTransactionUseCase>(),
        initialTransaction: initialTransaction,
      ));
  gh.factory<_i20.ForgotPasswordUseCase>(() =>
      _i20.ForgotPasswordUseCase(auth: gh<_i7.IAuthenticationRepository>()));
  gh.lazySingleton<_i21.GoRouter>(() => devAppLocalPackageModule
      .appRouterDev(gh<String>(instanceName: 'init_location')));
  gh.factory<_i22.LoadAllTransactions>(
      () => _i22.LoadAllTransactions(gh<_i13.TransactionRepository>()));
  gh.factory<_i23.LoginFormCubit>(() => _i23.LoginFormCubit(
        loginWithGoogleUseCase: gh<_i10.LoginWithGoogleUseCase>(),
        loginWithEmailAndPwUseCase: gh<_i9.LoginWithEmailAndPwUseCase>(),
      ));
  gh.factory<_i15.RegisterWithEmailAndPwUseCase>(
      () => _i15.RegisterWithEmailAndPwUseCase(
            verificationService: gh<_i15.VerificationService>(),
            auth: gh<_i7.IAuthenticationRepository>(),
          ));
  gh.singleton<_i24.AppBloc>(
      _i24.AppBloc(appSettingService: gh<_i17.AppSettingService>()));
  return getIt;
}

class _$SharedPreferencesModule extends _i3.SharedPreferencesModule {}

class _$FirebaseInjectableModule extends _i3.FirebaseInjectableModule {}

class _$DevAppLocalPackageModule extends _i3.DevAppLocalPackageModule {}
