import 'package:flutter/material.dart';

import '../../constants.dart';

const categoryPath = 'assets/icons/categories';
List<Category> categories = [
  Category(
    name: 'Food',
    iconPath: '$categoryPath/restaurant.png',
    backgroundColor: kRed20,
    iconColor: kRed100,
  ),
  Category(
    name: 'Salary',
    iconPath: '$categoryPath/salary.png',
    backgroundColor: kGreen20,
    iconColor: kGreen100,
  ),
  Category(
    name: 'Transportation',
    iconPath: '$categoryPath/car.png',
    backgroundColor: kBlue20,
    iconColor: kBlue100,
  ),
  Category(
    name: 'Subscriptions',
    iconPath: '$categoryPath/recurring-bill.png',
    backgroundColor: kViolet20,
    iconColor: kViolet100,
  ),
  Category(
    name: 'Shopping',
    iconPath: '$categoryPath/shopping-bag.png',
    backgroundColor: kYellow20,
    iconColor: kYellow100,
  ),
];

class Category {
  final String name;
  final String iconPath;
  final Color backgroundColor;
  final Color iconColor;

  Category({
    required this.iconColor,
    required this.name,
    required this.iconPath,
    required this.backgroundColor,
  });

  factory Category.fromName(String name) {
    return categories.where((element) => element.name.contains(name)).first;
  }
}