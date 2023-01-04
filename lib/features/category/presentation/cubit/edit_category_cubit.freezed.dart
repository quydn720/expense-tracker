// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditCategoryState {
  EditCategoryStatus get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  IconData get iconData => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  CategoryType get categoryType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditCategoryStateCopyWith<EditCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCategoryStateCopyWith<$Res> {
  factory $EditCategoryStateCopyWith(
          EditCategoryState value, $Res Function(EditCategoryState) then) =
      _$EditCategoryStateCopyWithImpl<$Res, EditCategoryState>;
  @useResult
  $Res call(
      {EditCategoryStatus status,
      String name,
      IconData iconData,
      Color color,
      CategoryType categoryType});
}

/// @nodoc
class _$EditCategoryStateCopyWithImpl<$Res, $Val extends EditCategoryState>
    implements $EditCategoryStateCopyWith<$Res> {
  _$EditCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? iconData = null,
    Object? color = null,
    Object? categoryType = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditCategoryStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_EditCategoryStateCopyWith<$Res>
    implements $EditCategoryStateCopyWith<$Res> {
  factory _$$_EditCategoryStateCopyWith(_$_EditCategoryState value,
          $Res Function(_$_EditCategoryState) then) =
      __$$_EditCategoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EditCategoryStatus status,
      String name,
      IconData iconData,
      Color color,
      CategoryType categoryType});
}

/// @nodoc
class __$$_EditCategoryStateCopyWithImpl<$Res>
    extends _$EditCategoryStateCopyWithImpl<$Res, _$_EditCategoryState>
    implements _$$_EditCategoryStateCopyWith<$Res> {
  __$$_EditCategoryStateCopyWithImpl(
      _$_EditCategoryState _value, $Res Function(_$_EditCategoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? iconData = null,
    Object? color = null,
    Object? categoryType = null,
  }) {
    return _then(_$_EditCategoryState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditCategoryStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
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

class _$_EditCategoryState implements _EditCategoryState {
  const _$_EditCategoryState(
      {this.status = EditCategoryStatus.initial,
      this.name = '',
      required this.iconData,
      required this.color,
      this.categoryType = CategoryType.expense});

  @override
  @JsonKey()
  final EditCategoryStatus status;
  @override
  @JsonKey()
  final String name;
  @override
  final IconData iconData;
  @override
  final Color color;
  @override
  @JsonKey()
  final CategoryType categoryType;

  @override
  String toString() {
    return 'EditCategoryState(status: $status, name: $name, iconData: $iconData, color: $color, categoryType: $categoryType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditCategoryState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, name, iconData, color, categoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditCategoryStateCopyWith<_$_EditCategoryState> get copyWith =>
      __$$_EditCategoryStateCopyWithImpl<_$_EditCategoryState>(
          this, _$identity);
}

abstract class _EditCategoryState implements EditCategoryState {
  const factory _EditCategoryState(
      {final EditCategoryStatus status,
      final String name,
      required final IconData iconData,
      required final Color color,
      final CategoryType categoryType}) = _$_EditCategoryState;

  @override
  EditCategoryStatus get status;
  @override
  String get name;
  @override
  IconData get iconData;
  @override
  Color get color;
  @override
  CategoryType get categoryType;
  @override
  @JsonKey(ignore: true)
  _$$_EditCategoryStateCopyWith<_$_EditCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
