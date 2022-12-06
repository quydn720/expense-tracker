import 'dart:io';
import 'dart:ui';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../models/category_model.dart';
import 'categories_dao.dart';

part 'drift_database.g.dart';

// TODO(fitz): move to higher layer (common layer)
@DriftDatabase(tables: [Categories], daos: [CategoriesDao])
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
          iconCodePoint: Value(FontAwesomeIcons.a.codePoint),
          color: Value(const Color(0xffFCAC12).value),
        ),
        CategoriesCompanion(
          name: const Value('Subcription'),
          iconCodePoint: Value(FontAwesomeIcons.addressBook.codePoint),
          color: Value(const Color(0xff7F3DFF).value),
        ),
        CategoriesCompanion(
          name: const Value('Food'),
          iconCodePoint: Value(FontAwesomeIcons.bowlFood.codePoint),
          color: Value(const Color(0xffFD3C4A).value),
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
