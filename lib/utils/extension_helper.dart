import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get hourFormatted => DateFormat.jm().format(this);
}

extension ChartX on FlSpot {
  List<FlSpot> fromMap(Map<int, double> json) {
    return json.entries.map((e) => FlSpot(e.key.toDouble(), e.value)).toList();
  }
}
