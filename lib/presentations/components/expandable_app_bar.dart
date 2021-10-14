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
  final Widget? text;
  final GestureDetector? lead;
  final GestureDetector? trail;
  DefaultAppBar({
    this.lead,
    this.trail,
    Key? key,
    required this.text,
  }) : super(
          key: key,
          leading: lead ?? const SizedBox(),
          actions: [trail ?? const SizedBox()],
          title: text ?? const SizedBox(),
        );
}
