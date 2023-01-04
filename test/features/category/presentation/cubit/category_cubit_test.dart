import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockICategoryRepository extends Mock implements ICategoryRepository {}

void main() {
  late ICategoryRepository repo;

  setUp(() {
    repo = MockICategoryRepository();
    when(repo.watchAllCategories).thenAnswer((_) => const Stream.empty());
  });
}
