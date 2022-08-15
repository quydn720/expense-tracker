import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../components/bars.dart';
import '../../../components/default_button.dart';

import 'export_result_page.dart';

class ExportPage extends StatefulWidget {
  const ExportPage({Key? key}) : super(key: key);
  static String routeName = '/Export';

  @override
  State<ExportPage> createState() => _ExportPageState();
}

class _ExportPageState extends State<ExportPage> {
  final items = ['CSV', 'Excel', 'Word'];
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Export')),
      body: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const DefaultBar(
                    title:
                        Text('What data do you want to export?', style: body1),
                  ),
                  const DefaultBar(
                    title: Text('When date range?', style: body1),
                  ),
                  const DefaultBar(
                    title: Text(
                      'What format do you want to export?',
                      style: body1,
                    ),
                  ),
                  DropdownButtonFormField<int>(
                    value: _selected,
                    onChanged: (v) => setState(() {
                      _selected = v!;
                    }),
                    items: [0, 1, 2]
                        .map(
                          (e) =>
                              DropdownMenuItem(value: e, child: Text(items[e])),
                        )
                        .toList(),
                    icon: Padding(
                      padding: const EdgeInsets.only(right: kDefaultPadding),
                      child: Image.asset(
                        'assets/icons/arrow-down-2.png',
                        color: kViolet100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppButton(
              title: 'Export',
              onPressed: () {
                // TODO: Bloc add Send file to email
                Navigator.pushReplacementNamed(
                  context,
                  ExportDataPromptPage.routeName,
                );
              },
              icon: Image.asset('assets/icons/download.png', color: kLight100),
            ),
          ],
        ),
      ),
    );
  }
}
