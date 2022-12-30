import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/home/bloc/home_bloc.dart';
import 'package:expense_tracker/features/home/presentation/widget/user_circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockingjay/mockingjay.dart';

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

void main() {
  late HomeBloc homeBloc;

  setUp(() {
    homeBloc = MockHomeBloc();
    when(() => homeBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  group('UserCircleAvatar', () {
    testWidgets('renders', (tester) async {
      when(() => homeBloc.state).thenReturn(const HomeState());

      await tester.pumpWidget(
        BlocProvider.value(
          value: homeBloc,
          child: const MaterialApp(home: UserCircleAvatar()),
        ),
      );
      expect(
        find.descendant(
          of: find.byType(CircleAvatar),
          matching: find.byIcon(Icons.person),
        ),
        findsOneWidget,
      );
    });
  });
}
