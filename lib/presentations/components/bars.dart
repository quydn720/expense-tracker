import 'package:flutter/material.dart';

class DefaultBar extends StatelessWidget {
  const DefaultBar({
    Key? key,
    this.title,
    this.trailing,
    this.color,
  }) : super(key: key);

  final Widget? title;
  final Widget? trailing;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 48,
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            title ?? const SizedBox.shrink(),
            trailing ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
