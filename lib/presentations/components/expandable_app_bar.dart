import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultAppBar3 extends AppBar {
  final Widget child;
  final double height;
  DefaultAppBar3({Key? key, required this.height, required this.child})
      : super(
          key: key,
          toolbarHeight: height,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultRadius),
            ),
          ),
          flexibleSpace: child,
        );
}

class DefaultAppBar extends AppBar {
  final Widget? middle;
  final Widget? lead;
  final Widget? trail;
  final Color? color;
  DefaultAppBar({
    this.color,
    this.lead,
    this.trail,
    Key? key,
    this.middle,
  }) : super(
          backgroundColor: color,
          key: key,
          leading: Padding(
            child: lead ?? const SizedBox.shrink(),
            padding: const EdgeInsets.only(left: kDefaultPadding),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: kDefaultPadding),
              child: trail ?? const SizedBox.shrink(),
            )
          ],
          title: middle ?? const SizedBox.shrink(),
        );
}
