import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavItem extends StatelessWidget {
  const CustomBottomNavItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.color = Colors.grey,
    super.key,
  });

  final IconData icon;
  final Text title;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon, size: 20, color: color),
            title,
          ],
        ),
      ),
    );
  }
}
