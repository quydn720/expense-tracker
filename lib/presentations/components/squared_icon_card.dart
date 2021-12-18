import 'package:expense_tracker/presentations/components/transaction_tile.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SquaredIconCard extends StatelessWidget {
  const SquaredIconCard({
    Key? key,
    required this.imagePath,
    required this.size,
    this.color = kLight100,
    this.imageColor,
  }) : super(key: key);

  final String imagePath;
  final double size;
  final Color color;
  final Color? imageColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          kDefaultRadius,
        ),
      ),
      child: Image.asset(
        imagePath,
        height: size,
        width: size,
        color: imageColor,
      ),
    );
  }
}

class CategoryIconCard extends StatelessWidget {
  const CategoryIconCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: category.backgroundColor,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          kDefaultRadius,
        ),
      ),
      child: Image.asset(
        category.iconPath,
        height: 60,
        width: 60,
        color: category.iconColor,
      ),
    );
  }
}
