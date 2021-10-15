import 'package:expense_tracker/presentations/components/icon_card.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class MoneyChip extends StatelessWidget {
  const MoneyChip({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.amount,
    required this.color,
  }) : super(key: key);
  final String imagePath;
  final String title;
  final int amount;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(kMediumPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.0),
          color: color,
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquaredIconCard(
              imagePath: imagePath,
              height: 48,
              imageColor: color,
            ),
            const SizedBox(width: kDefaultPadding),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: body1.copyWith(color: kLight80)),
                Text('\$$amount', style: title2.copyWith(color: kLight80)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
