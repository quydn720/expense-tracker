import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class CustomMonthPicker extends BasePickerModel {

  CustomMonthPicker({
    required this.currentTime,
  }) : super() {
    setLeftIndex(currentTime.month);
    setMiddleIndex(currentTime.month);
    setRightIndex(currentTime.year);
  }
  String digits(int value, int length) {
    return '$value'.padLeft(length, '0');
  }
  String month(int value) {
    return DateFormat(DateFormat.MONTH).format(DateTime(0, value));
  }

  @override
  int currentLeftIndex() {
    return _currentLeftIndex;
  }

  @override
  int currentMiddleIndex() {
    return _currentMiddleIndex;
  }

  @override
  int currentRightIndex() {
    return _currentRightIndex;
  }

  @override
  List<int> layoutProportions() {
    return [0, 1, 1];
  }

  @override
  String leftDivider() {
    return '';
  }

  @override
  String? leftStringAtIndex(int index) {
    if (index >= 0 && index < 12) {
      return digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? middleStringAtIndex(int index) {
    if (index >= 1 && index < 13) {
      return month(index);
    } else {
      return null;
    }
  }

  @override
  String rightDivider() {
    return '|';
  }

  @override
  String? rightStringAtIndex(int index) {
    if (index >= 2000 && index < 2025) {
      return digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  void setLeftIndex(int index) {
    _currentLeftIndex = index;
  }

  @override
  void setMiddleIndex(int index) {
    _currentMiddleIndex = index;
  }

  @override
  void setRightIndex(int index) {
    _currentRightIndex = index;
  }

  final DateTime currentTime;
  late int _currentLeftIndex;
  late int _currentRightIndex;
  late int _currentMiddleIndex;

  @override
  DateTime finalTime() {
    return currentTime.isUtc
        ? DateTime.utc(
            currentMiddleIndex(),
            currentTime.day,
            currentLeftIndex(),
            currentMiddleIndex(),
          )
        : DateTime(
            currentRightIndex(),
            currentMiddleIndex(),
            currentTime.day,
            currentLeftIndex(),
            currentMiddleIndex(),
          );
  }
}
