import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/presentation/app.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseDynamicLinks extends Mock implements FirebaseDynamicLinks {}

class MockAppBloc extends Mock implements AppBloc {}

void main() {
  group('App', () {
    late AppBloc appBloc;
    late FirebaseDynamicLinks dynamicLinks;

    setUp(() {
      appBloc = MockAppBloc();
      when(() => appBloc.state).thenReturn(const AppState());
      when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());

      dynamicLinks = MockFirebaseDynamicLinks();
      when(() => dynamicLinks.onLink).thenAnswer((_) => const Stream.empty());
    });

    testWidgets('renders AppView', (tester) async {
      await tester.pumpWidget(
        BlocProvider.value(
          value: appBloc,
          child: App(
            router: GoRouter(routes: []),
            appName: 'Mock App',
            dynamicLinks: dynamicLinks,
          ),
        ),
      );
      await tester.pump();
      expect(find.byType(App), findsOneWidget);
    });
  });
}
