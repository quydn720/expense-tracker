import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/features/app/presentation/app.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_helper/app_test.dart';
import '../../../../test_helper/mock_router.dart';

class MockAuthenticationRepository extends Mock
    implements IAuthenticationRepository {}

class MockUser extends Mock implements User {}

class MockFirebaseDynamicLinks extends Mock implements FirebaseDynamicLinks {}

void main() {
  group('App', () {
    late IAuthenticationRepository authenticationRepository;
    late User user;
    late GoRouter router;
    late FirebaseDynamicLinks dynamicLinks;

    setUp(() {
      authenticationRepository = MockAuthenticationRepository();
      when(() => authenticationRepository.user).thenAnswer(
        (_) => const Stream.empty(),
      );

      user = MockUser();
      when(() => authenticationRepository.currentUser).thenReturn(user);
      when(() => user.isNotEmpty).thenReturn(true);
      when(() => user.isEmpty).thenReturn(false);
      when(() => user.email).thenReturn('test@gmail.com');

      dynamicLinks = MockFirebaseDynamicLinks();
      when(() => dynamicLinks.onLink).thenAnswer((_) => const Stream.empty());
      router = mockRouter(testingRoute: []);
    });

    testWidgets('renders AppView', (tester) async {
      await tester.pumpWidget(
        TestApp(
          router: router,
          dynamicLinks: dynamicLinks,
          providers: const [],
        ),
      );
      await tester.pump();
      expect(find.byType(App), findsOneWidget);
    });
  });
}
