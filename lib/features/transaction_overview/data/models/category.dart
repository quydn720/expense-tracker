import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({String? name, int? color, int? backgroundColor}) =
      _Category;
  static const categories = [
    Category(name: 'Shopping', color: 0xffFCAC12, backgroundColor: 0xffFCEED4),
    Category(
      name: 'Subcription',
      color: 0xff7F3DFF,
      backgroundColor: 0xffFCEED4,
    ),
    Category(name: 'Food', color: 0xffFD3C4A, backgroundColor: 0xffFCEED4),
    Category(
      name: 'Transportation',
      color: 0xff0077FF,
      backgroundColor: 0xffFCEED4,
    ),
    Category(
      name: 'Salary',
      color: 0xffFCAC12,
      backgroundColor: 0xff00A86B,
    ),
  ];
}
