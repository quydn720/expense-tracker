import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/blocs/tab/tab_bloc.dart';
import 'package:expense_tracker/presentations/pages/login/login_page.dart';
import 'package:expense_tracker/presentations/pages/main/main_page.dart';
import 'package:expense_tracker/presentations/pages/onboarding/onboarding_page.dart';
import '../blocs/app_bloc/app_bloc.dart';
import '../blocs/filter/filter_bloc.dart';
import '../blocs/transaction/transaction_bloc.dart';
import '../blocs/wallet/wallet_bloc.dart';
import '../injector.dart';
import '../routes/routes.dart';
import '../size_config.dart';
import '../theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.authenticationRepository,
  }) : super(key: key);

  final AuthenticationRepository authenticationRepository;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (context) => AppBloc(
              authenticationRepository: authenticationRepository,
              sharedPreferences: getIt<SharedPreferences>(),
            )..add(const AppStarted()),
          ),
        ],
        child: AppView(
          authenticationRepository: authenticationRepository,
        ),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key, required this.authenticationRepository})
      : super(key: key);
  final AuthenticationRepository authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          SizeConfig().init(context);
          if (state is Authenticated) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<TabBloc>(
                  create: (context) => TabBloc(),
                ),
                BlocProvider<TransactionBloc>(
                  create: (context) => TransactionBloc(
                    FirebaseTransactionRepository(
                      authenticationRepository: authenticationRepository,
                      cachedTransactions: {},
                    ),
                  )..add(const LoadTransactions()),
                ),
                BlocProvider<WalletBloc>(
                  create: (context) => WalletBloc(
                    FirebaseWalletRepository(
                      authenticationRepository: authenticationRepository,
                      cachedWallet: {},
                    ),
                  )..add(const LoadWallets()),
                ),
                BlocProvider<FilterBloc>(
                  create: (context) => FilterBloc(
                      transactionBloc: context.read<TransactionBloc>()),
                ),
              ],
              child: const MainPage(),
            );
          }
          if (state is Unauthenticated) {
            return const SignInPage();
          }
          return const OnboardingPage();
        },
      ),
      // routes: routes,
      debugShowCheckedModeBanner: false,
      theme: theme,
    );
  }
}
