import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';

class ExpandedPill extends StatelessWidget {
  const ExpandedPill({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);
  final Widget label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Chip(
          labelPadding: const EdgeInsets.all(2),
          backgroundColor: kLight60,
          avatar: Image.asset(
            'assets/icons/arrow-down-2.png',
            color: kViolet100,
          ),
          label: label,
        ),
      ),
    );
  }
}
