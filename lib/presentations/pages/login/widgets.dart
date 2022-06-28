import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class HyperlinkText extends StatelessWidget {
  const HyperlinkText({
    Key? key,
    required this.normalText,
    required this.linkText,
    this.normalTextStyle,
    this.linkTextStyle,
    this.onTap,
  }) : super(key: key);
  final String normalText;
  final String linkText;
  final TextStyle? normalTextStyle;
  final TextStyle? linkTextStyle;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: normalText,
            style: normalTextStyle ?? body3.copyWith(color: kDark100),
          ),
          TextSpan(
            text: linkText,
            style: linkTextStyle ?? body3.copyWith(color: kViolet100),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
