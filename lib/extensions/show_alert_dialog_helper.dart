// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/cupertino.dart';

void showAlertDialog(
  BuildContext context,
  Function destructiveCallback, {
  required String title,
  required String content,
  required String destructiveLabel,
  String? cancelLabel,
  Function? cancellationCallback,
}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          /// This parameter indicates this action is the default,
          /// and turns the action's text to bold text.
          isDefaultAction: true,
          onPressed: () {
            cancellationCallback?.call();
            Navigator.pop(context);
          },
          child: Text(cancelLabel ?? 'Cancel'),
        ),
        CupertinoDialogAction(
          /// This parameter indicates the action would perform
          /// a destructive action such as deletion, and turns
          /// the action's text color to red.
          isDestructiveAction: true,
          onPressed: () {
            destructiveCallback();
            Navigator.pop(context);
          },
          child: Text(destructiveLabel),
        ),
      ],
    ),
  );
}
