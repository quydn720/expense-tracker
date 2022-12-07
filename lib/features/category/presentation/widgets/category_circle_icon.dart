import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';

const _iconRadius = 24.0;

class CategoryCircleIcon extends StatelessWidget {
  const CategoryCircleIcon({super.key, required this.category});

  final CategoryEntity category;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: _iconRadius,
      backgroundColor: category.backgroundColor,
      child: Icon(category.icon, color: category.color),
    );
  }
}
