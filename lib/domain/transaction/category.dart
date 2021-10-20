import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required UniqueId id,
    required String name,
  }) = _Category;

  factory Category.fromUniqueString(String input) {
    return Category(
      id: UniqueId.fromUniqueString(const Uuid().v1()),
      name: input,
    );
  }
}
