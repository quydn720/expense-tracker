import 'package:flutter/material.dart';

import '../../constants.dart';

class SquaredIconCard extends StatelessWidget {
  const SquaredIconCard({
    Key? key,
    required this.imagePath,
    required this.height,
    this.color = kLight100,
    this.imageColor = kDark100,
  }) : super(key: key);

  final String imagePath;
  final double height;
  final Color color;
  final Color imageColor;
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
        height: height,
        color: imageColor,
      ),
    );
  }
}
