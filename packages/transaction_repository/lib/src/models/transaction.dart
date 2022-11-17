import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:transaction_repository/src/entities/entities.dart';
import 'package:uuid/uuid.dart';

@immutable
class Transaction {
  Transaction({
    String? id,
    String? description,
    required this.amount,
    required this.category,
    required this.walletId,
    required this.type,
    this.imagesPath,
    DateTime? date,
  })  : id = id ?? const Uuid().v4(),
        date = date ?? DateTime.now(),
        description = description ?? '';

  factory Transaction.fromEntity(TransactionEntity entity) {
    return Transaction(
      description: entity.description,
      id: entity.id,
      amount: entity.amount,
      category: Category.empty(),
      type: entity.type,
      date: entity.timestamp.toDate(),
      walletId: entity.walletId,
    );
  }

  factory Transaction.empty() {
    return Transaction(
      amount: 0,
      category: Category.empty(),
      description: 'test description',
      walletId: 'test-wallet-id',
      type: TransactionType.income,
    );
  }
  final String id;
  final double amount;
  final Category category;
  final String description;
  final TransactionType type;
  final DateTime date;
  final String walletId;
  final List<String>? imagesPath;

  TransactionEntity toEntity() {
    return TransactionEntity(
      id: id,
      amount: amount,
      category: category,
      description: description,
      walletId: walletId,
      type: type,
      timestamp: Timestamp.fromDate(date),
    );
  }

  Transaction copyWith({
    String? id,
    double? amount,
    Category? category,
    String? description,
    String? walletId,
    TransactionType? type,
    List<String>? imagesPath,
  }) {
    return Transaction(
      id: id ?? this.id,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      type: type ?? this.type,
      walletId: walletId ?? this.walletId,
      imagesPath: imagesPath,
    );
  }

  bool get stringify => true;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Transaction &&
        other.id == id &&
        other.amount == amount &&
        other.category == category &&
        other.description == description &&
        other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        amount.hashCode ^
        category.hashCode ^
        description.hashCode ^
        type.hashCode;
  }

  @override
  String toString() {
    return 'Transaction(amount: $amount, description: $description)';
  }
}

enum TransactionType { expense, income }

const categoryPath = 'assets/icons/categories';

class Category {
  Category({
    required this.iconColor,
    required this.name,
    required this.iconPath,
    required this.backgroundColor,
  });

  factory Category.fromName(String name) {
    return categories.where((element) => element.name.contains(name)).first;
  }

  factory Category.empty() => categories.first;

  final String name;
  final String iconPath;
  final Color backgroundColor;
  final Color iconColor;
  bool get isEmpty => name == 'Category';

  static List<Category> categories = [
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

  static Color colorByName(String name) =>
      categories.where((e) => e.name == name).first.iconColor;
}

const Color kViolet20 = Color(0xffEEE5FF);
const Color kViolet40 = Color(0xffD3BDFF);
const Color kViolet60 = Color(0xffB18AFF);
const Color kViolet80 = Color(0xff8F57FF);
const Color kViolet100 = Color(0xff7F3DFF);

const Color kRed20 = Color(0xffFDD5D7);
const Color kRed40 = Color(0xffFDA2A9);
const Color kRed60 = Color(0xffFD6F7A);
const Color kRed80 = Color(0xffFD5662);
const Color kRed100 = Color(0xffFD3C4A);

const Color kGreen20 = Color(0xffCFFAEA);
const Color kGreen40 = Color(0xff93EACA);
const Color kGreen60 = Color(0xff65D1AA);
const Color kGreen80 = Color(0xff2AB784);
const Color kGreen100 = Color(0xff00A86B);

const Color kYellow20 = Color(0xffFCEED4);
const Color kYellow40 = Color(0xffFCDDA1);
const Color kYellow60 = Color(0xffFCCC6F);
const Color kYellow80 = Color(0xffFCBB3C);
const Color kYellow100 = Color(0xffFCAC12);

const Color kBlue20 = Color(0xffBDDCFF);
const Color kBlue40 = Color(0xff8AC0FF);
const Color kBlue60 = Color(0xff57A5FF);
const Color kBlue80 = Color(0xff248AFF);
const Color kBlue100 = Color(0xff0077FF);
