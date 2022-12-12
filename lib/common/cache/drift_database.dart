import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart';
import 'package:expense_tracker/features/category/data/models/category_model.dart';
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart';
import 'package:expense_tracker/features/transaction/data/models/transaction_model.dart';
import 'package:flutter/material.dart' hide Table;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'drift_database.g.dart';

@DriftDatabase(
  tables: [Categories, Transactions],
  daos: [CategoriesDao, TransactionsDao],
)
class MyDatabase extends _$MyDatabase {
  MyDatabase(super.e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
        await createInitialRecords();
      },
    );
  }

  Future<void> createInitialRecords() {
    return batch(
      (batch) => batch.insertAll(categories, [
        CategoriesCompanion(
          name: const Value('Grocery'),
          color: Value(const Color(0xffFCAC12).value),
          icon: const Value(FontAwesomeIcons.calculator),
        ),
        CategoriesCompanion(
          name: const Value('Subcription'),
          color: Value(const Color(0xff7F3DFF).value),
          icon: const Value(Icons.abc),
        ),
        CategoriesCompanion(
          name: const Value('Food'),
          color: Value(const Color(0xffFD3C4A).value),
          icon: const Value(Icons.note),
        ),
      ]),
    );
  }
}

LazyDatabase openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase(file);
  });
}
