import 'package:go_router/go_router.dart';

GoRouter mockRouter({
  String? initialRoute = '/',
  required List<GoRoute> testingRoute,
}) {
  return GoRouter(initialLocation: initialRoute, routes: testingRoute);
}
