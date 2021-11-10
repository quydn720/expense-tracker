// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDTO _$CategoryDTOFromJson(Map<String, dynamic> json) {
  return _CategoryDTO.fromJson(json);
}

/// @nodoc
class _$CategoryDTOTearOff {
  const _$CategoryDTOTearOff();

  _CategoryDTO call(
      {required String id,
      required String name,
      required String iconPath,
      required int color}) {
    return _CategoryDTO(
      id: id,
      name: name,
      iconPath: iconPath,
      color: color,
    );
  }

  CategoryDTO fromJson(Map<String, Object?> json) {
    return CategoryDTO.fromJson(json);
  }
}

/// @nodoc
const $CategoryDTO = _$CategoryDTOTearOff();

/// @nodoc
mixin _$CategoryDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDTOCopyWith<CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDTOCopyWith<$Res> {
  factory $CategoryDTOCopyWith(
          CategoryDTO value, $Res Function(CategoryDTO) then) =
      _$CategoryDTOCopyWithImpl<$Res>;
  $Res call({String id, String name, String iconPath, int color});
}

/// @nodoc
class _$CategoryDTOCopyWithImpl<$Res> implements $CategoryDTOCopyWith<$Res> {
  _$CategoryDTOCopyWithImpl(this._value, this._then);

  final CategoryDTO _value;
  // ignore: unused_field
  final $Res Function(CategoryDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iconPath = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CategoryDTOCopyWith<$Res>
    implements $CategoryDTOCopyWith<$Res> {
  factory _$CategoryDTOCopyWith(
          _CategoryDTO value, $Res Function(_CategoryDTO) then) =
      __$CategoryDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String iconPath, int color});
}

/// @nodoc
class __$CategoryDTOCopyWithImpl<$Res> extends _$CategoryDTOCopyWithImpl<$Res>
    implements _$CategoryDTOCopyWith<$Res> {
  __$CategoryDTOCopyWithImpl(
      _CategoryDTO _value, $Res Function(_CategoryDTO) _then)
      : super(_value, (v) => _then(v as _CategoryDTO));

  @override
  _CategoryDTO get _value => super._value as _CategoryDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iconPath = freezed,
    Object? color = freezed,
  }) {
    return _then(_CategoryDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDTO extends _CategoryDTO {
  const _$_CategoryDTO(
      {required this.id,
      required this.name,
      required this.iconPath,
      required this.color})
      : super._();

  factory _$_CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String iconPath;
  @override
  final int color;

  @override
  String toString() {
    return 'CategoryDTO(id: $id, name: $name, iconPath: $iconPath, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, iconPath, color);

  @JsonKey(ignore: true)
  @override
  _$CategoryDTOCopyWith<_CategoryDTO> get copyWith =>
      __$CategoryDTOCopyWithImpl<_CategoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDTOToJson(this);
  }
}

abstract class _CategoryDTO extends CategoryDTO {
  const factory _CategoryDTO(
      {required String id,
      required String name,
      required String iconPath,
      required int color}) = _$_CategoryDTO;
  const _CategoryDTO._() : super._();

  factory _CategoryDTO.fromJson(Map<String, dynamic> json) =
      _$_CategoryDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get iconPath;
  @override
  int get color;
  @override
  @JsonKey(ignore: true)
  _$CategoryDTOCopyWith<_CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
