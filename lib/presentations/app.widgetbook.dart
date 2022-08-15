// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/bars.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:expense_tracker/theme.dart';
import 'package:expense_tracker/widgetbook/theme.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(
        name: 'Expense Tracker',
      ),
      themes: [
        WidgetbookTheme(
          name: 'Theme Data',
          data: getLightTheme(),
        ),
      ],
      textScaleFactors: [
        1.0,
        2.0,
        3.0,
      ],
      categories: [
        WidgetbookCategory(
          name: 'use cases',
          folders: [
            WidgetbookFolder(
              name: 'presentations',
              widgets: [],
              folders: [
                WidgetbookFolder(
                  name: 'components',
                  widgets: [
                    WidgetbookComponent(
                      name: 'DefaultBar',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Bar',
                          builder: (context) => barUsecase(context),
                        ),
                      ],
                      isExpanded: true,
                    ),
                    WidgetbookComponent(
                      name: 'AppButton',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Button',
                          builder: (context) => appButton(context),
                        ),
                      ],
                      isExpanded: true,
                    ),
                  ],
                  folders: [],
                  isExpanded: true,
                ),
              ],
              isExpanded: true,
            ),
          ],
          widgets: [],
        ),
      ],
    );
  }
}
