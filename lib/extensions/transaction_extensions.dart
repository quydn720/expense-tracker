import 'package:expense_tracker/extensions/date_extensions.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';

enum Period {
  day,
  week,
  month,
  year,
}

extension ExpensesExtension on Iterable<TransactionEntity> {
  List<dynamic> filterByPeriod(Period period, int periodIndex) {
    final transactions = <TransactionEntity>[];
    DateTime startDate;
    DateTime endDate;
    final now = DateTime.now();

    switch (period) {
      case Period.day:
        startDate = endDate = now.subtract(Duration(days: periodIndex));
        break;
      case Period.week:
        final diffSinceMonday = now.weekday - 1;
        startDate =
            now.subtract(Duration(days: diffSinceMonday + 7 * periodIndex));
        endDate = startDate.add(const Duration(days: 6));

        break;
      case Period.month:
        startDate = DateTime(now.year, now.month - periodIndex);
        endDate = DateTime(now.year, now.month - periodIndex + 1, 0);
        break;
      case Period.year:
        startDate = DateTime(now.year - 1);
        endDate = DateTime(now.year, 12, 31);
        break;
    }

    startDate = DateTime(startDate.year, startDate.month, startDate.day);
    endDate = DateTime(endDate.year, endDate.month, endDate.day, 23, 59, 59);

    forEach((element) {
      if (element.dateCreated.isBetween(startDate, endDate)) {
        transactions.add(element);
      }
    });

    return [transactions, startDate, endDate];
  }

  List<double> sum() {
    var expense = 0.0;
    var income = 0.0;
    forEach((element) {
      if (element.category.categoryType == CategoryType.expense) {
        expense += element.amount;
      } else {
        income += element.amount;
      }
    });

    return [expense, income];
  }

  Map<String, List<TransactionEntity>> groupWeekly() {
    final grouped = <String, List<TransactionEntity>>{
      'Monday': [],
      'Tuesday': [],
      'Wednesday': [],
      'Thursday': [],
      'Friday': [],
      'Saturday': [],
      'Sunday': [],
    };

    forEach((element) {
      grouped[element.dayInWeek]!.add(element);
    });

    return grouped;
  }

  Map<int, List<TransactionEntity>> groupMonthly(DateTime startDate) {
    final numOfDays = DateTime(startDate.year, startDate.month + 1, 0).day;
    final grouped =
        List.generate(numOfDays, (index) => <TransactionEntity>[]).asMap();

    forEach((element) {
      grouped[element.dayInMonth - 1]!.add(element);
    });

    return grouped;
  }
}
