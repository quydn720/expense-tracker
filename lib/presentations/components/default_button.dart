import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultButtonwd extends StatelessWidget {
  const DefaultButtonwd({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(title),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class DefaultSmallButton extends StatelessWidget {
  const DefaultSmallButton({
    Key? key,
    required this.title,
    required this.onPress,
    this.icon,
    this.color = kPrimaryColor,
  }) : super(key: key);
  final String title;
  final VoidCallback onPress;
  final Icon? icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: color,
            fixedSize: kSmallButtonSize,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultRadius),
            ),
          ),
        ),
      ),
      child: ElevatedButton(
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(title, style: title3),
            ),
          ],
        ),
      ),
    );
  }
}
