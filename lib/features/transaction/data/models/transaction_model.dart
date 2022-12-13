import 'dart:convert' as json;

import 'package:drift/drift.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:flutter/material.dart' hide Column, Table;

import '../../../../common/cache/drift_database.dart';
import '../../../category/data/models/category_model.dart';

class Transactions extends Table {
  TextColumn get id => text()();
  TextColumn get categoryName => text().references(Categories, #name)();
  TextColumn get walletId => text()();
  TextColumn get description => text().nullable()();
  TextColumn get image => text()();
  RealColumn get amount => real()();
  DateTimeColumn get dateCreated => dateTime()();
  BoolColumn get isRepeated => boolean()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class TransactionWithCategory {
  const TransactionWithCategory({
    required this.transaction,
    required this.category,
  });

  final Transaction transaction;
  final Category category;

  TransactionEntity toEntity() {
    return TransactionEntity(
      id: transaction.id,
      amount: transaction.amount,
      category: CategoryEntity(
        name: category.name,
        icon: category.icon,
        color: Color(category.color),
      ),
      dateCreated: transaction.dateCreated,
      walletId: '',
      description: transaction.description,
    );
  }
}

class ImageConverter extends TypeConverter<Image, String> {
  const ImageConverter();

  Image imageFromBase64String(String base64String) {
    return Image.memory(json.base64Decode(base64String));
  }

  Uint8List dataFromBase64String(String base64String) {
    return json.base64Decode(base64String);
  }

  String base64String(Uint8List data) {
    return json.base64Encode(data);
  }

  @override
  Image fromSql(String fromDb) {
    final map = json.jsonDecode(fromDb) as Map<String, dynamic>;
    return Image.memory(json.base64Decode(map['base64String'] as String));
  }

  @override
  String toSql(Image value) {
    return 'jsonEncode';
  }
}
