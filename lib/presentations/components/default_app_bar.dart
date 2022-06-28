import 'package:flutter/material.dart';

class DefaultAppBar extends AppBar {
  DefaultAppBar({
    this.color,
    this.lead,
    this.trail,
    Key? key,
    this.middle,
  }) : super(
          // leadingWidth: SizeConfig.screenWidth * 0.4,
          // automaticallyImplyLeading: false,
          backgroundColor: color,
          key: key,
          leading: lead ?? const SizedBox.shrink(),
          actions: [trail ?? const SizedBox.shrink()],
          title: middle ?? const SizedBox.shrink(),
        );
  final Widget? middle;
  final Widget? lead;
  final Widget? trail;
  final Color? color;
}
