import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    @Default('') String name,
    @Default(Colors.transparent) Color color,
    required String emoji,
  }) = _CategoryEntity;

  const CategoryEntity._();

  Color get backgroundColor => color.withOpacity(0.2);
}

const categories = [
  CategoryEntity(emoji: '🍏', name: 'Shopping', color: Color(0xffFCAC12)),
  CategoryEntity(emoji: '🍏', name: 'Subcription', color: Color(0xff7F3DFF)),
  CategoryEntity(emoji: '🍏', name: 'Food', color: Color(0xffFD3C4A)),
  CategoryEntity(emoji: '🍏', name: 'Transportation', color: Color(0xff0077FF)),
  CategoryEntity(emoji: '🍏', name: 'Salary', color: Color(0xffFCAC12)),
];
