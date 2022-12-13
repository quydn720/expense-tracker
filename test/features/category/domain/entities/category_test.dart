import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'background color equal color with opacity 20%',
    () async {
      expect(
        const CategoryEntity(
          name: 'mock category',
          icon: Icons.abc,
          color: Colors.yellow,
        ).backgroundColor,
        Colors.yellow.withOpacity(0.2),
      );
    },
  );
}
