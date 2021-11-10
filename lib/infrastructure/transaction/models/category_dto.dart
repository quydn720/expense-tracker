import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDTO with _$CategoryDTO {
  const CategoryDTO._();

  const factory CategoryDTO({
    required String id,
    required String name,
    required String iconPath,
    required int color,
  }) = _CategoryDTO;

  Category toDomain() {
    return Category(
      id: UniqueId.fromUniqueString(id),
      name: name,
      imagePath: iconPath,
      color: color,
    );
  }

  factory CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryDTOFromJson(json);
}
