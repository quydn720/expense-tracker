import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../size_config.dart';

class CustomBottomNavItem extends StatelessWidget {
  const CustomBottomNavItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.color = Colors.grey,
  });

  final IconData icon;
  final Text title;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // TODO: Maybe some splash animation later on
      onTap: onTap,
      child: SizedBox(
        width: SizeConfig.screenWidth * 0.15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon, size: 20.0, color: color),
            title,
          ],
        ),
      ),
    );
  }
}
