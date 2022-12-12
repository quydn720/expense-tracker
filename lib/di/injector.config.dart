// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i7;
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:expense_tracker/common/cache/drift_database.dart' as _i13;
import 'package:expense_tracker/common/cache/local_cache.dart' as _i8;
import 'package:expense_tracker/di/injector.dart' as _i3;
import 'package:expense_tracker/features/app/bloc/app_bloc.dart' as _i31;
import 'package:expense_tracker/features/app/data/app_settings.dart' as _i20;
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart'
    as _i25;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart'
    as _i11;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart'
    as _i12;
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart'
    as _i14;
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart'
    as _i21;
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart'
    as _i29;
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart'
    as _i30;
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart'
    as _i22;
import 'package:expense_tracker/features/category/data/repositories/local_category_repository.dart'
    as _i28;
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart'
    as _i27;
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart'
    as _i32;
import 'package:expense_tracker/features/settings/theme/theme_controller.dart'
    as _i16;
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart'
    as _i24;
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart'
    as _i9;
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart'
    as _i23;
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart'
    as _i19;
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart'
    as _i17;
import 'package:expense_tracker/features/transaction/transaction_overview/usecases/load_transactions.dart'
    as _i10;
import 'package:expense_tracker/user_preferences.dart' as _i18;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i26;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i15;

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
  final driftDatabase = _$DriftDatabase();
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
  gh.lazySingleton<_i9.ITransactionRepository>(
    () => devAppLocalPackageModule.getTransactionRepoDev(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i9.ITransactionRepository>(
    () => devAppLocalPackageModule.getTransactionRepoProd(),
    registerFor: {_prod},
  );
  gh.factory<_i10.LoadAllTransactions>(
      () => _i10.LoadAllTransactions(gh<_i9.ITransactionRepository>()));
  gh.factory<_i11.LoginWithEmailAndPwUseCase>(() =>
      _i11.LoginWithEmailAndPwUseCase(
          auth: gh<_i7.IAuthenticationRepository>()));
  gh.factory<_i12.LoginWithGoogleUseCase>(() =>
      _i12.LoginWithGoogleUseCase(auth: gh<_i7.IAuthenticationRepository>()));
  gh.singleton<_i13.MyDatabase>(driftDatabase.myDatabase);
  gh.factory<_i14.RegisterWithEmailAndPwUseCase>(() =>
      _i14.RegisterWithEmailAndPwUseCase(
          auth: gh<_i7.IAuthenticationRepository>()));
  await gh.factoryAsync<_i15.SharedPreferences>(
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
  gh.singleton<_i16.ThemeController>(
      _i16.ThemeController(gh<_i8.ILocalCache>()));
  gh.factory<_i17.TransactionBloc>(
      () => _i17.TransactionBloc(gh<_i9.ITransactionRepository>()));
  gh.singleton<_i18.UserPreferences>(
      _i18.UserPreferences(prefs: gh<_i15.SharedPreferences>()));
  gh.factory<bool>(
    () => sharedPreferencesModule.isOnboardingCompeted,
    instanceName: 'isOnboardingCompleted',
  );
  gh.factory<_i19.AddTransactionUseCase>(
      () => _i19.AddTransactionUseCase(gh<_i9.ITransactionRepository>()));
  gh.factory<_i20.AppSettingService>(
      () => _i20.AppSettingService(gh<_i15.SharedPreferences>()));
  gh.lazySingleton<_i21.AuthenticationBloc>(
      () => _i21.AuthenticationBloc(gh<_i7.IAuthenticationRepository>()));
  gh.factory<_i22.CategoriesDao>(
      () => _i22.CategoriesDao(gh<_i13.MyDatabase>()));
  gh.factoryParam<_i23.EditTransactionCubit, _i24.TransactionEntity?, dynamic>((
    initialTransaction,
    _,
  ) =>
      _i23.EditTransactionCubit(
        gh<_i19.AddTransactionUseCase>(),
        initialTransaction: initialTransaction,
      ));
  gh.factory<_i25.ForgotPasswordUseCase>(() =>
      _i25.ForgotPasswordUseCase(auth: gh<_i7.IAuthenticationRepository>()));
  gh.lazySingleton<_i26.GoRouter>(() => devAppLocalPackageModule
      .appRouterDev(gh<String>(instanceName: 'init_location')));
  gh.factory<_i27.ICategoryRepository>(
      () => _i28.LocalCategoryRepository(gh<_i22.CategoriesDao>()));
  gh.factory<_i29.LoginFormCubit>(() => _i29.LoginFormCubit(
        loginWithGoogleUseCase: gh<_i12.LoginWithGoogleUseCase>(),
        loginWithEmailAndPwUseCase: gh<_i11.LoginWithEmailAndPwUseCase>(),
      ));
  gh.factory<_i30.RegisterFormCubit>(() => _i30.RegisterFormCubit(
      registerWithEmailAndPwUseCase: gh<_i14.RegisterWithEmailAndPwUseCase>()));
  gh.singleton<_i31.AppBloc>(
      _i31.AppBloc(appSettingService: gh<_i20.AppSettingService>()));
  gh.factory<_i32.CategoryCubit>(
      () => _i32.CategoryCubit(gh<_i27.ICategoryRepository>()));
  return getIt;
}

class _$SharedPreferencesModule extends _i3.SharedPreferencesModule {}

class _$FirebaseInjectableModule extends _i3.FirebaseInjectableModule {}

class _$DevAppLocalPackageModule extends _i3.DevAppLocalPackageModule {}

class _$DriftDatabase extends _i3.DriftDatabase {}
