import 'package:flutter/material.dart';

import '../../constants.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    Key? key,
    this.suffix,
    this.hint,
  }) : super(key: key);
  final Widget? suffix;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          child: suffix,
        ),
        hintText: hint,
      ),
    );
  }
}
