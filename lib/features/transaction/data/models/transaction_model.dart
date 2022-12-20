import 'package:drift/drift.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/data/models/category_model.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:flutter/material.dart' hide Column, Table;
import 'package:image_picker/image_picker.dart';

class Transactions extends Table {
  TextColumn get id => text()();
  TextColumn get categoryName => text().references(Categories, #name)();
  TextColumn get walletId => text()();
  TextColumn get description => text().nullable()();
  TextColumn get image => text().nullable()();
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
    XFile? file;
    if (transaction.image != null) {
      file = XFile(transaction.image!);
    }
    return TransactionEntity(
      file: file,
      id: transaction.id,
      amount: transaction.amount,
      category: CategoryEntity(
        name: category.name,
        icon: category.icon,
        color: Color(category.color),
      ),
      dateCreated: transaction.dateCreated,
      walletId: transaction.walletId,
      description: transaction.description,
    );
  }
}

// class ImageConverter extends TypeConverter<XFile, String> {
//   const ImageConverter();

//   Image imageFromBase64String(String base64String) {
//     return Image.memory(json.base64Decode(base64String));
//   }

//   Uint8List dataFromBase64String(String base64String) {
//     return json.base64Decode(base64String);
//   }

//   String base64String(Uint8List data) {
//     return json.base64Encode(data);
//   }

//   @override
//   XFile fromSql(String fromDb) {
//     final map = json.jsonDecode(fromDb) as Map<String, dynamic>;
//     return XFile.fromData(json.base64Decode(map['base64String'] as String);
//   }

//   @override
//   String toSql(XFile value) {
//     final c = value.readAsBytes().then(base64String);
//     return c;
//   }
// }
