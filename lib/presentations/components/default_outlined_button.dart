import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultOutlinedButton extends StatelessWidget {
  const DefaultOutlinedButton({
    Key? key,
    required this.onPress,
    required this.title,
    this.icon,
  }) : super(key: key);
  final VoidCallback onPress;
  final Widget? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: const Color(0xffF1F1FA),
            fixedSize: kLargeButtonSize,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultRadius),
            ),
          ),
        ),
      ),
      child: OutlinedButton(
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                style: title3.copyWith(color: kDark100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
