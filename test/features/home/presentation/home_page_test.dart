import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/home/bloc/home_bloc.dart';
import 'package:expense_tracker/features/home/presentation/home_page.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockingjay/mockingjay.dart';

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

void main() {
  late HomeBloc homeBloc;
  late AppBloc appBloc;

  group('HomePage', () {
    setUp(() {
      homeBloc = MockHomeBloc();
      when(() => homeBloc.stream).thenAnswer((_) => const Stream.empty());
      when(() => homeBloc.state).thenAnswer((_) => const HomeState());

      appBloc = MockAppBloc();
      when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());
      when(() => appBloc.state).thenAnswer((_) => const AppState());

      GetIt.instance.registerFactory<HomeBloc>(() => homeBloc);
    });

    testWidgets('renders HomeView', (tester) async {
      await tester.pumpWidget(
        BlocProvider.value(
          value: appBloc,
          child: MaterialApp(
            home: const HomePage(),
            localizationsDelegates: LocalizationFactory.localizationsDelegates,
          ),
        ),
      );

      expect(find.byType(HomeView), findsOneWidget);
    });
  });
}
