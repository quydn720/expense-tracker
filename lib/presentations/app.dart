import 'package:authentication_repository/authentication_repository.dart';
import 'package:budget_repository/budget_repository.dart';
import 'package:expense_tracker/app_text_theme.dart';
import 'package:expense_tracker/features/settings/presentation/pages/setting_screen.dart';
import 'package:expense_tracker/locale_controller.dart';
import 'package:expense_tracker/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

import '../blocs/app_bloc/app_bloc.dart';
import '../blocs/budget/budget_bloc.dart';
import '../blocs/filter/filter_bloc.dart';
import '../blocs/tab/tab_bloc.dart';
import '../blocs/transaction/transaction_bloc.dart';
import '../blocs/wallet/wallet_bloc.dart';
import '../di/injector.dart';
import '../size_config.dart';
import '../theme.dart';
import 'pages/login/login_page.dart';
import 'pages/main/main_page.dart';
import 'pages/onboarding/onboarding_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: getIt<AppConfigurations>().appName,
      locale: context.watch<LocaleController>().locale,
      themeMode: context.watch<ThemeController>().themeMode,
      theme: ThemeData(
        primaryColor: const Color(0xff7F3DFF),
        textTheme: textTheme,
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: textTheme,
        primaryColor: const Color(0xff7F3DFF),
      ),
      home: const NewWidget(),
    );
    // final authenticationRepository = getIt<IAuthenticationRepository>();
    // return RepositoryProvider.value(
    //   value: authenticationRepository,
    //   child: MultiBlocProvider(
    //     providers: [
    //       BlocProvider<AppBloc>(
    //         create: (context) => AppBloc(
    //           authenticationRepository: authenticationRepository,
    //           sharedPreferences: getIt<SharedPreferences>(),
    //         )..add(const AppStarted()),
    //       ),
    //     ],
    //     child: AppView(
    //       authenticationRepository: authenticationRepository,
    //     ),
    //   ),
    // );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SettingScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          getIt<AppConfigurations>().appName,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
        actions: [
          IconButton(
            onPressed: () {
              final newThemeMode =
                  context.read<ThemeController>().themeMode != ThemeMode.dark
                      ? ThemeMode.dark
                      : ThemeMode.light;

              context.read<ThemeController>().changeThemeMode(newThemeMode);
            },
            icon: Icon(
              context.watch<ThemeController>().themeMode == ThemeMode.light
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
          )
        ],
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key, required this.authenticationRepository});
  final IAuthenticationRepository authenticationRepository;

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
                    getIt<FakeTransactionRepo>(),
                  )..add(const LoadTransactions()),
                ),
                BlocProvider<WalletBloc>(
                  create: (context) =>
                      WalletBloc(FakeWalletRepo())..add(const LoadWallets()),
                ),
                BlocProvider(
                  create: (context) => BudgetBloc(FakeBudgetRepository())
                    ..add(const LoadBudgets()),
                ),
                BlocProvider<FilterBloc>(
                  create: (context) => FilterBloc(
                    transactionBloc: context.read<TransactionBloc>(),
                  ),
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
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: getIt<String>(),
    );
  }
}
