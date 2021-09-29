import 'package:intl/intl.dart';

class DateFormatter {
  static late DateTime today;
  static late List<DateTime> listDateOfWeek;
  late final String formattedWeekday;
  static void init() {
    today = DateTime.now();
    // DateTime: first day of the week is Sunday - maybe.
    DateTime newDate = today.add(Duration(days: -(7 - today.weekday - 1)));
    listDateOfWeek = List.generate(
      7,
      (index) => newDate.add(
        Duration(days: index),
      ),
    );
  }

  static toWeekday(int index) => DateFormat('E').format(listDateOfWeek[index]);
}
