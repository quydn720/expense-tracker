import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/common/pages/profile/export/export_result_page.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';

const exportDataButtonKey = Key('exportScreen_exportData_elevatedButton');

class ExportDataScreen extends StatefulWidget {
  const ExportDataScreen({super.key});

  @override
  State<ExportDataScreen> createState() => _ExportDataScreenState();
}

class _ExportDataScreenState extends State<ExportDataScreen> {
  final items = ['CSV', 'Excel', 'Word'];
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.exportData),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kMediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    // const DefaultBar(
                    //   title: Text('What data do you want to export?'),
                    // ),
                    // const DefaultBar(
                    //   title: Text('When date range?', style: body1),
                    // ),
                    // const DefaultBar(
                    //   title: Text(
                    //     'What format do you want to export?',
                    //     style: body1,
                    //   ),
                    // ),
                    DropdownButtonFormField<int>(
                      value: _selected,
                      onChanged: (v) => setState(() => _selected = v!),
                      items: [0, 1, 2]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(items[e]),
                            ),
                          )
                          .toList(),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: kDefaultPadding),
                        child: Image.asset(
                          'assets/icons/arrow-down-2.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton.icon(
                key: exportDataButtonKey,
                label: Text(context.l10n.exportData),
                onPressed: () {
                  // TODO(fitz): add into router
                  Navigator.pushReplacementNamed(
                    context,
                    ExportDataPromptPage.routeName,
                  );
                },
                icon: Image.asset(
                  'assets/icons/download.png',
                  color: kLight100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DataFormat { csv, excel, word }
