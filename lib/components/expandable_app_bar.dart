import '../constants.dart';
import 'package:flutter/material.dart';

class ExpandableAppBar extends AppBar {
  final Widget child;
  final double height;
  ExpandableAppBar({Key? key, required this.height, required this.child})
      : super(
          key: key,
          toolbarHeight: height,
          shape: const RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(kRadius),
            ),
          ),
          flexibleSpace: child,
        );
}
