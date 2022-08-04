import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavItemIcon extends StatelessWidget {
  const BottomNavItemIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(icon),
        const SizedBox(height: 4),
      ],
    );
  }
}
