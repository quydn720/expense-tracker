import 'package:authentication_repository/authentication_repository.dart';
import 'package:budget_repository/budget_repository.dart';
import 'package:expense_tracker/app_text_theme.dart';
import 'package:expense_tracker/features/settings/presentation/pages/setting_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/theme_screen.dart';
import 'package:expense_tracker/home_screen.dart';
import 'package:expense_tracker/locale_controller.dart';
import 'package:expense_tracker/router.dart';
import 'package:expense_tracker/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

import 'blocs/app_bloc/app_bloc.dart';
import 'blocs/budget/budget_bloc.dart';
import 'blocs/filter/filter_bloc.dart';
import 'blocs/tab/tab_bloc.dart';
import 'blocs/transaction/transaction_bloc.dart';
import 'blocs/wallet/wallet_bloc.dart';
import 'di/injector.dart';
import 'presentations/pages/login/login_page.dart';
import 'presentations/pages/main/main_page.dart';
import 'presentations/pages/onboarding/onboarding_page.dart';
import 'size_config.dart';
import 'theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: getIt<AppConfigurations>().appName,
      locale: context.watch<LocaleController>().locale,
      themeMode: context.watch<ThemeController>().themeMode,
      theme: ThemeData(
        primaryColor: const Color(0xff7F3DFF),
        textTheme: textTheme,
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(color: Color(0xff212325)),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: textTheme,
        primaryColor: const Color(0xff7F3DFF),
        appBarTheme: const AppBarTheme(elevation: 1),
      ),
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

enum ScaffoldTab { home, transaction, budget, profile }

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.selectedTab,
    required this.child,
  });

  static const screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    SettingScreen(),
  ];

  final Widget child;
  final ScaffoldTab selectedTab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (idx) {
          switch (ScaffoldTab.values[idx]) {
            case ScaffoldTab.home:
              context.go('/${ScaffoldTab.values[idx].name}');
              break;
            case ScaffoldTab.transaction:
              context.go('/${ScaffoldTab.values[idx].name}');
              break;
            case ScaffoldTab.budget:
              context.go('/${ScaffoldTab.values[idx].name}');
              break;
            case ScaffoldTab.profile:
              context.go('/${ScaffoldTab.values[idx].name}');
              break;
          }
        },
        currentIndex: selectedTab.index,
        selectedFontSize: 12,
        selectedItemColor: const Color(0xff7F3DFF),
        iconSize: 32,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: selectedTab.index == 0
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/transaction.svg',
              color: selectedTab.index == 1
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/pie-chart.svg',
              color: selectedTab.index == 2
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: 'Budget',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              color: selectedTab.index == 3
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          selectedTab.name.capitalize(),
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

enum TabItem { red, green, blue, profile }

const Map<TabItem, String> tabName = {
  TabItem.red: 'red',
  TabItem.green: 'green',
  TabItem.blue: 'blue',
  TabItem.profile: 'Profile',
};

const Map<TabItem, Widget> activeTabColor = {
  TabItem.red: HomeScreen(),
  TabItem.green: HomeScreen(),
  TabItem.blue: HomeScreen(),
  TabItem.profile: SettingScreen(),
};
