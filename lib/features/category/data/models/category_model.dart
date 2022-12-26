import 'dart:convert' as json;

import 'package:drift/drift.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart' hide Table, Column;

/// Model to save to sqflite database
/// color: value (int), name: (string), icon: (object) with converter
/// with primary key equals to name of the category, so we can't have 2 category
/// with same name.
@DataClassName('Category')
class Categories extends Table {
  TextColumn get name => text()();
  IntColumn get color => integer()();
  TextColumn get icon => text().map(const IconDataConverter())();
  IntColumn get type => integer().map(const CategoryTypeConverter())();

  @override
  Set<Column<Object>>? get primaryKey => {name};
}

class CategoryTypeConverter extends TypeConverter<CategoryType, int> {
  const CategoryTypeConverter();

  @override
  CategoryType fromSql(int fromDb) {
    return CategoryType.values[fromDb];
  }

  @override
  int toSql(CategoryType value) {
    return value.index;
  }
}

class IconDataConverter extends TypeConverter<IconData, String> {
  const IconDataConverter();

  @override
  IconData fromSql(String fromDb) {
    final map = json.jsonDecode(fromDb) as Map<String, dynamic>;
    return IconData(
      map['codePoint'] as int,
      fontFamily: map['fontFamily'] as String,
      fontPackage: map['fontPackage'] as String?,
    );
  }

  @override
  String toSql(IconData value) {
    final jsonEncode = json.jsonEncode({
      'codePoint': value.codePoint,
      'fontFamily': value.fontFamily,
      'fontPackage': value.fontPackage,
    });
    return jsonEncode;
  }
}
