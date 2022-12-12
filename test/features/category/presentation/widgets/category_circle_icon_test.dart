import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/presentation/widgets/category_circle_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCategoryEntity extends Mock implements CategoryEntity {}

void main() {
  late CategoryEntity category;
  setUp(() {
    category = MockCategoryEntity();
    when(() => category.color).thenReturn(Colors.black);
    when(() => category.backgroundColor).thenReturn(Colors.white);
    when(() => category.icon).thenReturn(Icons.abc);
  });
  testWidgets('renders correctly', (tester) async {
    await tester.pumpWidget(
      MaterialApp(home: CategoryCircleIcon(category: category)),
    );
    expect(find.byType(CategoryCircleIcon), findsOneWidget);
    final circleAvatar = tester.widget<CircleAvatar>(find.byType(CircleAvatar));
    expect(circleAvatar.radius, 24.0);
    expect(circleAvatar.backgroundColor, category.backgroundColor);
    final circleAvatarIcon = tester.widget<Icon>(find.byType(Icon));
    expect(circleAvatarIcon.color, category.color);
    expect(circleAvatarIcon.icon, category.icon);
  });
}
