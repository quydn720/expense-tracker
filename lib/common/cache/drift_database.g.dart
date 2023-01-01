// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Category extends DataClass implements Insertable<Category> {
  final String name;
  final int color;
  final IconData icon;
  final CategoryType type;
  const Category(
      {required this.name,
      required this.color,
      required this.icon,
      required this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['color'] = Variable<int>(color);
    {
      final converter = $CategoriesTable.$converter0;
      map['icon'] = Variable<String>(converter.toSql(icon));
    }
    {
      final converter = $CategoriesTable.$converter1;
      map['type'] = Variable<int>(converter.toSql(type));
    }
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      name: Value(name),
      color: Value(color),
      icon: Value(icon),
      type: Value(type),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<int>(json['color']),
      icon: serializer.fromJson<IconData>(json['icon']),
      type: serializer.fromJson<CategoryType>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<int>(color),
      'icon': serializer.toJson<IconData>(icon),
      'type': serializer.toJson<CategoryType>(type),
    };
  }

  Category copyWith(
          {String? name, int? color, IconData? icon, CategoryType? type}) =>
      Category(
        name: name ?? this.name,
        color: color ?? this.color,
        icon: icon ?? this.icon,
        type: type ?? this.type,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, color, icon, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.name == this.name &&
          other.color == this.color &&
          other.icon == this.icon &&
          other.type == this.type);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<String> name;
  final Value<int> color;
  final Value<IconData> icon;
  final Value<CategoryType> type;
  const CategoriesCompanion({
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    this.type = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required String name,
    required int color,
    required IconData icon,
    required CategoryType type,
  })  : name = Value(name),
        color = Value(color),
        icon = Value(icon),
        type = Value(type);
  static Insertable<Category> custom({
    Expression<String>? name,
    Expression<int>? color,
    Expression<String>? icon,
    Expression<int>? type,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (type != null) 'type': type,
    });
  }

  CategoriesCompanion copyWith(
      {Value<String>? name,
      Value<int>? color,
      Value<IconData>? icon,
      Value<CategoryType>? type}) {
    return CategoriesCompanion(
      name: name ?? this.name,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (icon.present) {
      final converter = $CategoriesTable.$converter0;
      map['icon'] = Variable<String>(converter.toSql(icon.value));
    }
    if (type.present) {
      final converter = $CategoriesTable.$converter1;
      map['type'] = Variable<int>(converter.toSql(type.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
      'color', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumnWithTypeConverter<IconData, String> icon =
      GeneratedColumn<String>('icon', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<IconData>($CategoriesTable.$converter0);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<CategoryType, int> type =
      GeneratedColumn<int>('type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<CategoryType>($CategoriesTable.$converter1);
  @override
  List<GeneratedColumn> get $columns => [name, color, icon, type];
  @override
  String get aliasedName => _alias ?? 'categories';
  @override
  String get actualTableName => 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    context.handle(_iconMeta, const VerificationResult.success());
    context.handle(_typeMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {name};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      color: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}color'])!,
      icon: $CategoriesTable.$converter0.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}icon'])!),
      type: $CategoriesTable.$converter1.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!),
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }

  static TypeConverter<IconData, String> $converter0 =
      const IconDataConverter();
  static TypeConverter<CategoryType, int> $converter1 =
      const CategoryTypeConverter();
}

class WalletEntry extends DataClass implements Insertable<WalletEntry> {
  final String id;
  final String name;
  final String walletType;
  final double balance;
  const WalletEntry(
      {required this.id,
      required this.name,
      required this.walletType,
      required this.balance});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['wallet_type'] = Variable<String>(walletType);
    map['balance'] = Variable<double>(balance);
    return map;
  }

  WalletsCompanion toCompanion(bool nullToAbsent) {
    return WalletsCompanion(
      id: Value(id),
      name: Value(name),
      walletType: Value(walletType),
      balance: Value(balance),
    );
  }

  factory WalletEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WalletEntry(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      walletType: serializer.fromJson<String>(json['walletType']),
      balance: serializer.fromJson<double>(json['balance']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'walletType': serializer.toJson<String>(walletType),
      'balance': serializer.toJson<double>(balance),
    };
  }

  WalletEntry copyWith(
          {String? id, String? name, String? walletType, double? balance}) =>
      WalletEntry(
        id: id ?? this.id,
        name: name ?? this.name,
        walletType: walletType ?? this.walletType,
        balance: balance ?? this.balance,
      );
  @override
  String toString() {
    return (StringBuffer('WalletEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('walletType: $walletType, ')
          ..write('balance: $balance')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, walletType, balance);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WalletEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.walletType == this.walletType &&
          other.balance == this.balance);
}

class WalletsCompanion extends UpdateCompanion<WalletEntry> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> walletType;
  final Value<double> balance;
  const WalletsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.walletType = const Value.absent(),
    this.balance = const Value.absent(),
  });
  WalletsCompanion.insert({
    required String id,
    required String name,
    required String walletType,
    required double balance,
  })  : id = Value(id),
        name = Value(name),
        walletType = Value(walletType),
        balance = Value(balance);
  static Insertable<WalletEntry> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? walletType,
    Expression<double>? balance,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (walletType != null) 'wallet_type': walletType,
      if (balance != null) 'balance': balance,
    });
  }

  WalletsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? walletType,
      Value<double>? balance}) {
    return WalletsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      walletType: walletType ?? this.walletType,
      balance: balance ?? this.balance,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (walletType.present) {
      map['wallet_type'] = Variable<String>(walletType.value);
    }
    if (balance.present) {
      map['balance'] = Variable<double>(balance.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WalletsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('walletType: $walletType, ')
          ..write('balance: $balance')
          ..write(')'))
        .toString();
  }
}

class $WalletsTable extends Wallets with TableInfo<$WalletsTable, WalletEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WalletsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _walletTypeMeta = const VerificationMeta('walletType');
  @override
  late final GeneratedColumn<String> walletType = GeneratedColumn<String>(
      'wallet_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _balanceMeta = const VerificationMeta('balance');
  @override
  late final GeneratedColumn<double> balance = GeneratedColumn<double>(
      'balance', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, walletType, balance];
  @override
  String get aliasedName => _alias ?? 'wallets';
  @override
  String get actualTableName => 'wallets';
  @override
  VerificationContext validateIntegrity(Insertable<WalletEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('wallet_type')) {
      context.handle(
          _walletTypeMeta,
          walletType.isAcceptableOrUnknown(
              data['wallet_type']!, _walletTypeMeta));
    } else if (isInserting) {
      context.missing(_walletTypeMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    } else if (isInserting) {
      context.missing(_balanceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WalletEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WalletEntry(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      walletType: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}wallet_type'])!,
      balance: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}balance'])!,
    );
  }

  @override
  $WalletsTable createAlias(String alias) {
    return $WalletsTable(attachedDatabase, alias);
  }
}

class Transaction extends DataClass implements Insertable<Transaction> {
  final String id;
  final String categoryName;
  final String walletId;
  final String? description;
  final String? image;
  final double amount;
  final DateTime dateCreated;
  final bool isRepeated;
  const Transaction(
      {required this.id,
      required this.categoryName,
      required this.walletId,
      this.description,
      this.image,
      required this.amount,
      required this.dateCreated,
      required this.isRepeated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['category_name'] = Variable<String>(categoryName);
    map['wallet_id'] = Variable<String>(walletId);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    map['amount'] = Variable<double>(amount);
    map['date_created'] = Variable<DateTime>(dateCreated);
    map['is_repeated'] = Variable<bool>(isRepeated);
    return map;
  }

  TransactionsCompanion toCompanion(bool nullToAbsent) {
    return TransactionsCompanion(
      id: Value(id),
      categoryName: Value(categoryName),
      walletId: Value(walletId),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      amount: Value(amount),
      dateCreated: Value(dateCreated),
      isRepeated: Value(isRepeated),
    );
  }

  factory Transaction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Transaction(
      id: serializer.fromJson<String>(json['id']),
      categoryName: serializer.fromJson<String>(json['categoryName']),
      walletId: serializer.fromJson<String>(json['walletId']),
      description: serializer.fromJson<String?>(json['description']),
      image: serializer.fromJson<String?>(json['image']),
      amount: serializer.fromJson<double>(json['amount']),
      dateCreated: serializer.fromJson<DateTime>(json['dateCreated']),
      isRepeated: serializer.fromJson<bool>(json['isRepeated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'categoryName': serializer.toJson<String>(categoryName),
      'walletId': serializer.toJson<String>(walletId),
      'description': serializer.toJson<String?>(description),
      'image': serializer.toJson<String?>(image),
      'amount': serializer.toJson<double>(amount),
      'dateCreated': serializer.toJson<DateTime>(dateCreated),
      'isRepeated': serializer.toJson<bool>(isRepeated),
    };
  }

  Transaction copyWith(
          {String? id,
          String? categoryName,
          String? walletId,
          Value<String?> description = const Value.absent(),
          Value<String?> image = const Value.absent(),
          double? amount,
          DateTime? dateCreated,
          bool? isRepeated}) =>
      Transaction(
        id: id ?? this.id,
        categoryName: categoryName ?? this.categoryName,
        walletId: walletId ?? this.walletId,
        description: description.present ? description.value : this.description,
        image: image.present ? image.value : this.image,
        amount: amount ?? this.amount,
        dateCreated: dateCreated ?? this.dateCreated,
        isRepeated: isRepeated ?? this.isRepeated,
      );
  @override
  String toString() {
    return (StringBuffer('Transaction(')
          ..write('id: $id, ')
          ..write('categoryName: $categoryName, ')
          ..write('walletId: $walletId, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('amount: $amount, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('isRepeated: $isRepeated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, categoryName, walletId, description,
      image, amount, dateCreated, isRepeated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Transaction &&
          other.id == this.id &&
          other.categoryName == this.categoryName &&
          other.walletId == this.walletId &&
          other.description == this.description &&
          other.image == this.image &&
          other.amount == this.amount &&
          other.dateCreated == this.dateCreated &&
          other.isRepeated == this.isRepeated);
}

class TransactionsCompanion extends UpdateCompanion<Transaction> {
  final Value<String> id;
  final Value<String> categoryName;
  final Value<String> walletId;
  final Value<String?> description;
  final Value<String?> image;
  final Value<double> amount;
  final Value<DateTime> dateCreated;
  final Value<bool> isRepeated;
  const TransactionsCompanion({
    this.id = const Value.absent(),
    this.categoryName = const Value.absent(),
    this.walletId = const Value.absent(),
    this.description = const Value.absent(),
    this.image = const Value.absent(),
    this.amount = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.isRepeated = const Value.absent(),
  });
  TransactionsCompanion.insert({
    required String id,
    required String categoryName,
    required String walletId,
    this.description = const Value.absent(),
    this.image = const Value.absent(),
    required double amount,
    required DateTime dateCreated,
    required bool isRepeated,
  })  : id = Value(id),
        categoryName = Value(categoryName),
        walletId = Value(walletId),
        amount = Value(amount),
        dateCreated = Value(dateCreated),
        isRepeated = Value(isRepeated);
  static Insertable<Transaction> custom({
    Expression<String>? id,
    Expression<String>? categoryName,
    Expression<String>? walletId,
    Expression<String>? description,
    Expression<String>? image,
    Expression<double>? amount,
    Expression<DateTime>? dateCreated,
    Expression<bool>? isRepeated,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryName != null) 'category_name': categoryName,
      if (walletId != null) 'wallet_id': walletId,
      if (description != null) 'description': description,
      if (image != null) 'image': image,
      if (amount != null) 'amount': amount,
      if (dateCreated != null) 'date_created': dateCreated,
      if (isRepeated != null) 'is_repeated': isRepeated,
    });
  }

  TransactionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? categoryName,
      Value<String>? walletId,
      Value<String?>? description,
      Value<String?>? image,
      Value<double>? amount,
      Value<DateTime>? dateCreated,
      Value<bool>? isRepeated}) {
    return TransactionsCompanion(
      id: id ?? this.id,
      categoryName: categoryName ?? this.categoryName,
      walletId: walletId ?? this.walletId,
      description: description ?? this.description,
      image: image ?? this.image,
      amount: amount ?? this.amount,
      dateCreated: dateCreated ?? this.dateCreated,
      isRepeated: isRepeated ?? this.isRepeated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (categoryName.present) {
      map['category_name'] = Variable<String>(categoryName.value);
    }
    if (walletId.present) {
      map['wallet_id'] = Variable<String>(walletId.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime>(dateCreated.value);
    }
    if (isRepeated.present) {
      map['is_repeated'] = Variable<bool>(isRepeated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsCompanion(')
          ..write('id: $id, ')
          ..write('categoryName: $categoryName, ')
          ..write('walletId: $walletId, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('amount: $amount, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('isRepeated: $isRepeated')
          ..write(')'))
        .toString();
  }
}

class $TransactionsTable extends Transactions
    with TableInfo<$TransactionsTable, Transaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _categoryNameMeta =
      const VerificationMeta('categoryName');
  @override
  late final GeneratedColumn<String> categoryName = GeneratedColumn<String>(
      'category_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES categories (name)');
  final VerificationMeta _walletIdMeta = const VerificationMeta('walletId');
  @override
  late final GeneratedColumn<String> walletId = GeneratedColumn<String>(
      'wallet_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES wallets (id)');
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  @override
  late final GeneratedColumn<DateTime> dateCreated = GeneratedColumn<DateTime>(
      'date_created', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _isRepeatedMeta = const VerificationMeta('isRepeated');
  @override
  late final GeneratedColumn<bool> isRepeated = GeneratedColumn<bool>(
      'is_repeated', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_repeated IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        categoryName,
        walletId,
        description,
        image,
        amount,
        dateCreated,
        isRepeated
      ];
  @override
  String get aliasedName => _alias ?? 'transactions';
  @override
  String get actualTableName => 'transactions';
  @override
  VerificationContext validateIntegrity(Insertable<Transaction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('category_name')) {
      context.handle(
          _categoryNameMeta,
          categoryName.isAcceptableOrUnknown(
              data['category_name']!, _categoryNameMeta));
    } else if (isInserting) {
      context.missing(_categoryNameMeta);
    }
    if (data.containsKey('wallet_id')) {
      context.handle(_walletIdMeta,
          walletId.isAcceptableOrUnknown(data['wallet_id']!, _walletIdMeta));
    } else if (isInserting) {
      context.missing(_walletIdMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    } else if (isInserting) {
      context.missing(_dateCreatedMeta);
    }
    if (data.containsKey('is_repeated')) {
      context.handle(
          _isRepeatedMeta,
          isRepeated.isAcceptableOrUnknown(
              data['is_repeated']!, _isRepeatedMeta));
    } else if (isInserting) {
      context.missing(_isRepeatedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Transaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Transaction(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      categoryName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}category_name'])!,
      walletId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}wallet_id'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      image: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      amount: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      dateCreated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_created'])!,
      isRepeated: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}is_repeated'])!,
    );
  }

  @override
  $TransactionsTable createAlias(String alias) {
    return $TransactionsTable(attachedDatabase, alias);
  }
}

class BudgetEntry extends DataClass implements Insertable<BudgetEntry> {
  final String id;
  final double amount;
  final double whenToNotify;
  final String categoryName;
  const BudgetEntry(
      {required this.id,
      required this.amount,
      required this.whenToNotify,
      required this.categoryName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['amount'] = Variable<double>(amount);
    map['when_to_notify'] = Variable<double>(whenToNotify);
    map['category_name'] = Variable<String>(categoryName);
    return map;
  }

  BudgetsCompanion toCompanion(bool nullToAbsent) {
    return BudgetsCompanion(
      id: Value(id),
      amount: Value(amount),
      whenToNotify: Value(whenToNotify),
      categoryName: Value(categoryName),
    );
  }

  factory BudgetEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BudgetEntry(
      id: serializer.fromJson<String>(json['id']),
      amount: serializer.fromJson<double>(json['amount']),
      whenToNotify: serializer.fromJson<double>(json['whenToNotify']),
      categoryName: serializer.fromJson<String>(json['categoryName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'amount': serializer.toJson<double>(amount),
      'whenToNotify': serializer.toJson<double>(whenToNotify),
      'categoryName': serializer.toJson<String>(categoryName),
    };
  }

  BudgetEntry copyWith(
          {String? id,
          double? amount,
          double? whenToNotify,
          String? categoryName}) =>
      BudgetEntry(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        whenToNotify: whenToNotify ?? this.whenToNotify,
        categoryName: categoryName ?? this.categoryName,
      );
  @override
  String toString() {
    return (StringBuffer('BudgetEntry(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('whenToNotify: $whenToNotify, ')
          ..write('categoryName: $categoryName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, amount, whenToNotify, categoryName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BudgetEntry &&
          other.id == this.id &&
          other.amount == this.amount &&
          other.whenToNotify == this.whenToNotify &&
          other.categoryName == this.categoryName);
}

class BudgetsCompanion extends UpdateCompanion<BudgetEntry> {
  final Value<String> id;
  final Value<double> amount;
  final Value<double> whenToNotify;
  final Value<String> categoryName;
  const BudgetsCompanion({
    this.id = const Value.absent(),
    this.amount = const Value.absent(),
    this.whenToNotify = const Value.absent(),
    this.categoryName = const Value.absent(),
  });
  BudgetsCompanion.insert({
    required String id,
    required double amount,
    required double whenToNotify,
    required String categoryName,
  })  : id = Value(id),
        amount = Value(amount),
        whenToNotify = Value(whenToNotify),
        categoryName = Value(categoryName);
  static Insertable<BudgetEntry> custom({
    Expression<String>? id,
    Expression<double>? amount,
    Expression<double>? whenToNotify,
    Expression<String>? categoryName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (amount != null) 'amount': amount,
      if (whenToNotify != null) 'when_to_notify': whenToNotify,
      if (categoryName != null) 'category_name': categoryName,
    });
  }

  BudgetsCompanion copyWith(
      {Value<String>? id,
      Value<double>? amount,
      Value<double>? whenToNotify,
      Value<String>? categoryName}) {
    return BudgetsCompanion(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      whenToNotify: whenToNotify ?? this.whenToNotify,
      categoryName: categoryName ?? this.categoryName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (whenToNotify.present) {
      map['when_to_notify'] = Variable<double>(whenToNotify.value);
    }
    if (categoryName.present) {
      map['category_name'] = Variable<String>(categoryName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BudgetsCompanion(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('whenToNotify: $whenToNotify, ')
          ..write('categoryName: $categoryName')
          ..write(')'))
        .toString();
  }
}

class $BudgetsTable extends Budgets with TableInfo<$BudgetsTable, BudgetEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BudgetsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _whenToNotifyMeta =
      const VerificationMeta('whenToNotify');
  @override
  late final GeneratedColumn<double> whenToNotify = GeneratedColumn<double>(
      'when_to_notify', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _categoryNameMeta =
      const VerificationMeta('categoryName');
  @override
  late final GeneratedColumn<String> categoryName = GeneratedColumn<String>(
      'category_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, amount, whenToNotify, categoryName];
  @override
  String get aliasedName => _alias ?? 'budgets';
  @override
  String get actualTableName => 'budgets';
  @override
  VerificationContext validateIntegrity(Insertable<BudgetEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('when_to_notify')) {
      context.handle(
          _whenToNotifyMeta,
          whenToNotify.isAcceptableOrUnknown(
              data['when_to_notify']!, _whenToNotifyMeta));
    } else if (isInserting) {
      context.missing(_whenToNotifyMeta);
    }
    if (data.containsKey('category_name')) {
      context.handle(
          _categoryNameMeta,
          categoryName.isAcceptableOrUnknown(
              data['category_name']!, _categoryNameMeta));
    } else if (isInserting) {
      context.missing(_categoryNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BudgetEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BudgetEntry(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      amount: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      whenToNotify: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}when_to_notify'])!,
      categoryName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}category_name'])!,
    );
  }

  @override
  $BudgetsTable createAlias(String alias) {
    return $BudgetsTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $WalletsTable wallets = $WalletsTable(this);
  late final $TransactionsTable transactions = $TransactionsTable(this);
  late final $BudgetsTable budgets = $BudgetsTable(this);
  late final CategoriesDao categoriesDao = CategoriesDao(this as MyDatabase);
  late final TransactionsDao transactionsDao =
      TransactionsDao(this as MyDatabase);
  late final BudgetsDao budgetsDao = BudgetsDao(this as MyDatabase);
  late final WalletsDao walletsDao = WalletsDao(this as MyDatabase);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [categories, wallets, transactions, budgets];
}
