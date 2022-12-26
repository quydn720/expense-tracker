import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    required String name,
    required IconData icon,
    required Color color,
    required CategoryType categoryType,
  }) = _CategoryEntity;

  const CategoryEntity._();

  Color get backgroundColor => color.withOpacity(0.2);
}

enum CategoryType { expense, income }
