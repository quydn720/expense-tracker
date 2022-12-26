// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEntity {
  String get name => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  CategoryType get categoryType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res, CategoryEntity>;
  @useResult
  $Res call(
      {String name, IconData icon, Color color, CategoryType categoryType});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res, $Val extends CategoryEntity>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
    Object? color = null,
    Object? categoryType = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryEntityCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory _$$_CategoryEntityCopyWith(
          _$_CategoryEntity value, $Res Function(_$_CategoryEntity) then) =
      __$$_CategoryEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, IconData icon, Color color, CategoryType categoryType});
}

/// @nodoc
class __$$_CategoryEntityCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res, _$_CategoryEntity>
    implements _$$_CategoryEntityCopyWith<$Res> {
  __$$_CategoryEntityCopyWithImpl(
      _$_CategoryEntity _value, $Res Function(_$_CategoryEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
    Object? color = null,
    Object? categoryType = null,
  }) {
    return _then(_$_CategoryEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
    ));
  }
}

/// @nodoc

class _$_CategoryEntity extends _CategoryEntity {
  const _$_CategoryEntity(
      {required this.name,
      required this.icon,
      required this.color,
      required this.categoryType})
      : super._();

  @override
  final String name;
  @override
  final IconData icon;
  @override
  final Color color;
  @override
  final CategoryType categoryType;

  @override
  String toString() {
    return 'CategoryEntity(name: $name, icon: $icon, color: $color, categoryType: $categoryType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, icon, color, categoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryEntityCopyWith<_$_CategoryEntity> get copyWith =>
      __$$_CategoryEntityCopyWithImpl<_$_CategoryEntity>(this, _$identity);
}

abstract class _CategoryEntity extends CategoryEntity {
  const factory _CategoryEntity(
      {required final String name,
      required final IconData icon,
      required final Color color,
      required final CategoryType categoryType}) = _$_CategoryEntity;
  const _CategoryEntity._() : super._();

  @override
  String get name;
  @override
  IconData get icon;
  @override
  Color get color;
  @override
  CategoryType get categoryType;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryEntityCopyWith<_$_CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
