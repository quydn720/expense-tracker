import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';

const backToHomeButtonKey =
    Key('exportSuccessScreen_backToHome_elevatedButton');

class ExportDataPromptPage extends StatelessWidget {
  const ExportDataPromptPage({super.key});
  static String routeName = '/export_result';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kMediumPadding),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/data_table.png'),
                    const SizedBox(height: kMediumPadding),
                    const Text(
                      '''
                      Check your email, we send you the financial report.
                      In certain cases, it might take a little longer,
                      depending on the time period and 
                      the volume of activity.''',
                      style: body1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                key: backToHomeButtonKey,
                child: const Text('Back to Home'),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
