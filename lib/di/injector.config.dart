// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i9;
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:expense_tracker/common/cache/drift_database.dart' as _i6;
import 'package:expense_tracker/di/injector.dart' as _i15;
import 'package:expense_tracker/features/app/bloc/app_bloc.dart' as _i38;
import 'package:expense_tracker/features/app/data/app_settings.dart' as _i3;
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart'
    as _i21;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart'
    as _i11;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart'
    as _i12;
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart'
    as _i14;
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart'
    as _i22;
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart'
    as _i30;
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart'
    as _i31;
import 'package:expense_tracker/features/budget/data/repositories/budget_repository_impl.dart'
    as _i9;
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart'
    as _i8;
import 'package:expense_tracker/features/budget/domain/usecases/create_budget.dart'
    as _i24;
import 'package:expense_tracker/features/budget/domain/usecases/get_all_budget.dart'
    as _i20;
import 'package:expense_tracker/features/budget/domain/usecases/update_budget.dart'
    as _i17;
import 'package:expense_tracker/features/budget/presentation/cubit/budget_cubit.dart'
    as _i35;
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart'
    as _i23;
import 'package:expense_tracker/features/category/data/repositories/local_category_repository.dart'
    as _i41;
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart'
    as _i37;
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart'
    as _i36;
import 'package:expense_tracker/features/home/bloc/home_bloc.dart' as _i40;
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart'
    as _i16;
import 'package:expense_tracker/features/transaction/data/repositories/transaction_repository_impl.dart'
    as _i12;
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart'
    as _i39;
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart'
    as _i28;
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart'
    as _i38;
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart'
    as _i33;
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart'
    as _i32;
import 'package:expense_tracker/features/transaction/transaction_overview/usecases/load_transactions.dart'
    as _i29;
import 'package:expense_tracker/features/user/presentation/bloc/user_bloc.dart'
    as _i19;
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart'
    as _i43;
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart'
    as _i34;
import 'package:expense_tracker/features/budget/data/datasources/in_memory_budget_datasource.dart'
    as _i24;
import 'package:expense_tracker/features/budget/data/datasources/local_budget_datasource.dart'
    as _i23;
import 'package:expense_tracker/features/budget/data/repositories/budget_repository_impl.dart'
    as _i26;
import 'package:expense_tracker/features/budget/domain/entities/budget.dart'
    as _i10;
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart'
    as _i25;
import 'package:expense_tracker/features/budget/domain/usecases/create_budget.dart'
    as _i32;
import 'package:expense_tracker/features/budget/domain/usecases/get_all_budget.dart'
    as _i33;
import 'package:expense_tracker/features/budget/domain/usecases/update_budget.dart'
    as _i36;
import 'package:expense_tracker/features/budget/presentation/cubit/budget_cubit.dart'
    as _i31;
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart'
    as _i20;
import 'package:expense_tracker/features/category/data/repositories/local_category_repository.dart'
    as _i28;
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart'
    as _i27;
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart'
    as _i39;
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart'
    as _i5;
import 'package:expense_tracker/features/transaction/data/repositories/transaction_repository_impl.dart'
    as _i13;
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart'
    as _i41;
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart'
    as _i29;
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart'
    as _i40;
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart'
    as _i37;
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart'
    as _i35;
import 'package:expense_tracker/features/transaction/transaction_overview/usecases/load_transactions.dart'
    as _i30;
import 'package:expense_tracker/features/user/presentation/bloc/user_bloc.dart'
    as _i17;
import 'package:expense_tracker/features/wallet/presentation/cubit/wallet_cubit.dart'
    as _i42;
import 'package:expense_tracker/user_preferences.dart' as _i16;
import 'package:firebase_auth/firebase_auth.dart' as _i18;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i22;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

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
  final a = _$A();
  final driftDatabase = _$DriftDatabase();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.factory<_i3.AppSettingService>(
      () => _i3.AppSettingService(gh<_i4.SharedPreferences>()));
  gh.factory<_i5.TransactionsDao>(
      () => _i5.TransactionsDao(gh<_i6.MyDatabase>()));
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getProd(),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i7.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getDev(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i8.IBudgetRepository>(() => _i9.LocalBudgetRepository());
  gh.lazySingleton<_i10.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i11.LoginWithGoogleUseCase>(() =>
      _i11.LoginWithGoogleUseCase(auth: gh<_i7.IAuthenticationRepository>()));
  gh.factory<_i12.Mapper>(() => _i12.Mapper());
  gh.singleton<_i13.MyDatabase>(driftDatabase.myDatabase);
  gh.factory<_i14.RegisterWithEmailAndPwUseCase>(() =>
      _i14.RegisterWithEmailAndPwUseCase(
          auth: gh<_i9.IAuthenticationRepository>()));
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.initialLocation,
    instanceName: 'init_location',
    registerFor: {_prod},
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.devInitialLocation,
    instanceName: 'init_location',
    registerFor: {_dev},
  );
  gh.singleton<_i15.AppConfigurations>(
    _i15.DevAppConfigurations(),
    registerFor: {
      _dev,
      _prod,
    },
  );
  gh.factory<_i16.TransactionsDao>(
      () => _i16.TransactionsDao(gh<_i13.MyDatabase>()));
  gh.factory<_i17.UpdateBudget>(
      () => _i17.UpdateBudget(gh<_i8.IBudgetRepository>()));
  gh.singleton<_i18.UserPreferences>(
      _i18.UserPreferences(prefs: gh<_i4.SharedPreferences>()));
  gh.factory<_i19.UserService>(
      () => _i19.UserService(gh<_i7.IAuthenticationRepository>()));
  gh.factory<_i20.WatchAllBudget>(
      () => _i20.WatchAllBudget(gh<_i8.IBudgetRepository>()));
  gh.factory<bool>(
    () => sharedPreferencesModule.isOnboardingCompeted,
    instanceName: 'isOnboardingCompleted',
  );
  gh.lazySingleton<_i18.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i19.AuthenticationBloc>(
      () => _i19.AuthenticationBloc(gh<_i9.IAuthenticationRepository>()));
  gh.factory<_i20.CategoriesDao>(
      () => _i20.CategoriesDao(gh<_i6.MyDatabase>()));
  gh.factory<_i21.ForgotPasswordUseCase>(() =>
      _i21.ForgotPasswordUseCase(auth: gh<_i9.IAuthenticationRepository>()));
  gh.lazySingleton<_i22.GoRouter>(() => devAppLocalPackageModule
      .appRouterDev(gh<String>(instanceName: 'init_location')));
  gh.factory<_i23.IBudgetDataSource>(
      () => _i24.InMemoryBudgetDataSource(budgets: gh<List<_i10.Budget>>()));
  gh.lazySingleton<_i25.IBudgetRepository>(
      () => _i26.LocalBudgetRepository(gh<_i23.IBudgetDataSource>()));
  gh.factory<_i27.ICategoryRepository>(
      () => _i28.LocalCategoryRepository(gh<_i20.CategoriesDao>()));
  gh.factory<_i29.ITransactionRepository>(
    () => _i13.TransactionRepositoryImpl(
      gh<_i5.TransactionsDao>(),
      gh<_i13.Mapper>(),
    ),
    registerFor: {_dev},
  );
  gh.factory<_i30.LoadAllTransactions>(
      () => _i30.LoadAllTransactions(gh<_i29.ITransactionRepository>()));
  gh.factory<_i31.BudgetCubit>(() => _i31.BudgetCubit(
        gh<_i32.CreateBudget>(),
        gh<_i33.WatchAllBudget>(),
        gh<_i33.GetAllBudgets>(),
      ));
  gh.factory<_i34.RegisterFormCubit>(() => _i34.RegisterFormCubit(
      registerWithEmailAndPwUseCase: gh<_i14.RegisterWithEmailAndPwUseCase>()));
  gh.factory<_i32.TransactionBloc>(
      () => _i32.TransactionBloc(gh<_i28.ITransactionRepository>()));
  gh.factory<_i19.UserBloc>(() => _i19.UserBloc(gh<_i19.UserService>()));
  gh.factory<_i33.AddTransactionUseCase>(
      () => _i33.AddTransactionUseCase(gh<_i28.ITransactionRepository>()));
  gh.singleton<_i34.AppBloc>(
      _i34.AppBloc(appSettingService: gh<_i3.AppSettingService>()));
  gh.factory<_i35.BudgetCubit>(() => _i35.BudgetCubit(
        gh<_i24.CreateBudget>(),
        gh<_i20.WatchAllBudget>(),
        gh<_i20.GetAllBudgets>(),
      ));
  gh.factory<_i36.CategoryCubit>(
      () => _i36.CategoryCubit(gh<_i37.ICategoryRepository>()));
  gh.factory<_i33.DeleteTransactionUseCase>(
      () => _i33.DeleteTransactionUseCase(gh<_i28.ITransactionRepository>()));
  gh.factoryParam<_i38.EditTransactionCubit, _i39.TransactionEntity?, dynamic>((
    initialTransaction,
    _,
  ) =>
      _i40.EditTransactionCubit(
        gh<_i37.AddTransactionUseCase>(),
        gh<_i37.DeleteTransactionUseCase>(),
        initialTransaction: initialTransaction,
      ));
  gh.factory<_i27.GetTransactionOfWallet>(
      () => _i27.GetTransactionOfWallet(gh<_i28.ITransactionRepository>()));
  gh.factory<_i40.HomeBloc>(() => _i40.HomeBloc(
        transactionRepository: gh<_i28.ITransactionRepository>(),
        db: gh<_i13.MyDatabase>(),
        userService: gh<_i19.UserService>(),
      ));
  gh.factory<_i37.ICategoryRepository>(
      () => _i41.LocalCategoryRepository(gh<_i23.CategoriesDao>()));
  return getIt;
}

class _$SharedPreferencesModule extends _i15.SharedPreferencesModule {}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}

class _$DevAppLocalPackageModule extends _i15.DevAppLocalPackageModule {}

class _$DriftDatabase extends _i15.DriftDatabase {}

class _$A extends _i24.A {}
