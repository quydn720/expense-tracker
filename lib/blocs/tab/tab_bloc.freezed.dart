// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TabEventTearOff {
  const _$TabEventTearOff();

  TabChanged tabChanged(AppTab tab) {
    return TabChanged(
      tab,
    );
  }
}

/// @nodoc
const $TabEvent = _$TabEventTearOff();

/// @nodoc
mixin _$TabEvent {
  AppTab get tab => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTab tab) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppTab tab)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTab tab)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabEventCopyWith<TabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabEventCopyWith<$Res> {
  factory $TabEventCopyWith(TabEvent value, $Res Function(TabEvent) then) =
      _$TabEventCopyWithImpl<$Res>;
  $Res call({AppTab tab});
}

/// @nodoc
class _$TabEventCopyWithImpl<$Res> implements $TabEventCopyWith<$Res> {
  _$TabEventCopyWithImpl(this._value, this._then);

  final TabEvent _value;
  // ignore: unused_field
  final $Res Function(TabEvent) _then;

  @override
  $Res call({
    Object? tab = freezed,
  }) {
    return _then(_value.copyWith(
      tab: tab == freezed
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as AppTab,
    ));
  }
}

/// @nodoc
abstract class $TabChangedCopyWith<$Res> implements $TabEventCopyWith<$Res> {
  factory $TabChangedCopyWith(
          TabChanged value, $Res Function(TabChanged) then) =
      _$TabChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppTab tab});
}

/// @nodoc
class _$TabChangedCopyWithImpl<$Res> extends _$TabEventCopyWithImpl<$Res>
    implements $TabChangedCopyWith<$Res> {
  _$TabChangedCopyWithImpl(TabChanged _value, $Res Function(TabChanged) _then)
      : super(_value, (v) => _then(v as TabChanged));

  @override
  TabChanged get _value => super._value as TabChanged;

  @override
  $Res call({
    Object? tab = freezed,
  }) {
    return _then(TabChanged(
      tab == freezed
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as AppTab,
    ));
  }
}

/// @nodoc

class _$TabChanged implements TabChanged {
  const _$TabChanged(this.tab);

  @override
  final AppTab tab;

  @override
  String toString() {
    return 'TabEvent.tabChanged(tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TabChanged &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @JsonKey(ignore: true)
  @override
  $TabChangedCopyWith<TabChanged> get copyWith =>
      _$TabChangedCopyWithImpl<TabChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTab tab) tabChanged,
  }) {
    return tabChanged(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppTab tab)? tabChanged,
  }) {
    return tabChanged?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTab tab)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class TabChanged implements TabEvent {
  const factory TabChanged(AppTab tab) = _$TabChanged;

  @override
  AppTab get tab;
  @override
  @JsonKey(ignore: true)
  $TabChangedCopyWith<TabChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
