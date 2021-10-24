import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required UniqueId id,
    required String name,
    required String imagePath,
    required int color,
  }) = _Category;

  factory Category.empty() {
    return Category(
      id: UniqueId(),
      name: 'empty category',
      color: kViolet60.value,
      imagePath: 'assets/icons/restaurant.png',
    );
  }
}