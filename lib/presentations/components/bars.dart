import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';

class DefaultBar extends StatelessWidget {
  const DefaultBar({Key? key, this.title, this.trailing}) : super(key: key);

  final Widget? title;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: SizedBox(
        height: 48,
        width: double.infinity,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              title ?? const SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding),
                child: trailing ?? const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
