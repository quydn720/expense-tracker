// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'budget_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BudgetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBudgets,
    required TResult Function(Budget budget) addBudget,
    required TResult Function(Budget budget) deleteBudget,
    required TResult Function(Budget updatedBudget) updateBudget,
    required TResult Function(List<Budget> budgets) budgetUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBudgets value) loadBudgets,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(BudgetsUpdated value) budgetUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetEventCopyWith<$Res> {
  factory $BudgetEventCopyWith(
          BudgetEvent value, $Res Function(BudgetEvent) then) =
      _$BudgetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BudgetEventCopyWithImpl<$Res> implements $BudgetEventCopyWith<$Res> {
  _$BudgetEventCopyWithImpl(this._value, this._then);

  final BudgetEvent _value;
  // ignore: unused_field
  final $Res Function(BudgetEvent) _then;
}

/// @nodoc
abstract class _$$LoadBudgetsCopyWith<$Res> {
  factory _$$LoadBudgetsCopyWith(
          _$LoadBudgets value, $Res Function(_$LoadBudgets) then) =
      __$$LoadBudgetsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadBudgetsCopyWithImpl<$Res> extends _$BudgetEventCopyWithImpl<$Res>
    implements _$$LoadBudgetsCopyWith<$Res> {
  __$$LoadBudgetsCopyWithImpl(
      _$LoadBudgets _value, $Res Function(_$LoadBudgets) _then)
      : super(_value, (v) => _then(v as _$LoadBudgets));

  @override
  _$LoadBudgets get _value => super._value as _$LoadBudgets;
}

/// @nodoc

class _$LoadBudgets implements LoadBudgets {
  const _$LoadBudgets();

  @override
  String toString() {
    return 'BudgetEvent.loadBudgets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadBudgets);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBudgets,
    required TResult Function(Budget budget) addBudget,
    required TResult Function(Budget budget) deleteBudget,
    required TResult Function(Budget updatedBudget) updateBudget,
    required TResult Function(List<Budget> budgets) budgetUpdated,
  }) {
    return loadBudgets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
  }) {
    return loadBudgets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
    required TResult orElse(),
  }) {
    if (loadBudgets != null) {
      return loadBudgets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBudgets value) loadBudgets,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(BudgetsUpdated value) budgetUpdated,
  }) {
    return loadBudgets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
  }) {
    return loadBudgets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
    required TResult orElse(),
  }) {
    if (loadBudgets != null) {
      return loadBudgets(this);
    }
    return orElse();
  }
}

abstract class LoadBudgets implements BudgetEvent {
  const factory LoadBudgets() = _$LoadBudgets;
}

/// @nodoc
abstract class _$$AddBudgetCopyWith<$Res> {
  factory _$$AddBudgetCopyWith(
          _$AddBudget value, $Res Function(_$AddBudget) then) =
      __$$AddBudgetCopyWithImpl<$Res>;
  $Res call({Budget budget});
}

/// @nodoc
class __$$AddBudgetCopyWithImpl<$Res> extends _$BudgetEventCopyWithImpl<$Res>
    implements _$$AddBudgetCopyWith<$Res> {
  __$$AddBudgetCopyWithImpl(
      _$AddBudget _value, $Res Function(_$AddBudget) _then)
      : super(_value, (v) => _then(v as _$AddBudget));

  @override
  _$AddBudget get _value => super._value as _$AddBudget;

  @override
  $Res call({
    Object? budget = freezed,
  }) {
    return _then(_$AddBudget(
      budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget,
    ));
  }
}

/// @nodoc

class _$AddBudget implements AddBudget {
  const _$AddBudget(this.budget);

  @override
  final Budget budget;

  @override
  String toString() {
    return 'BudgetEvent.addBudget(budget: $budget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBudget &&
            const DeepCollectionEquality().equals(other.budget, budget));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(budget));

  @JsonKey(ignore: true)
  @override
  _$$AddBudgetCopyWith<_$AddBudget> get copyWith =>
      __$$AddBudgetCopyWithImpl<_$AddBudget>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBudgets,
    required TResult Function(Budget budget) addBudget,
    required TResult Function(Budget budget) deleteBudget,
    required TResult Function(Budget updatedBudget) updateBudget,
    required TResult Function(List<Budget> budgets) budgetUpdated,
  }) {
    return addBudget(budget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
  }) {
    return addBudget?.call(budget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
    required TResult orElse(),
  }) {
    if (addBudget != null) {
      return addBudget(budget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBudgets value) loadBudgets,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(BudgetsUpdated value) budgetUpdated,
  }) {
    return addBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
  }) {
    return addBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
    required TResult orElse(),
  }) {
    if (addBudget != null) {
      return addBudget(this);
    }
    return orElse();
  }
}

abstract class AddBudget implements BudgetEvent {
  const factory AddBudget(final Budget budget) = _$AddBudget;

  Budget get budget => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddBudgetCopyWith<_$AddBudget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBudgetCopyWith<$Res> {
  factory _$$DeleteBudgetCopyWith(
          _$DeleteBudget value, $Res Function(_$DeleteBudget) then) =
      __$$DeleteBudgetCopyWithImpl<$Res>;
  $Res call({Budget budget});
}

/// @nodoc
class __$$DeleteBudgetCopyWithImpl<$Res> extends _$BudgetEventCopyWithImpl<$Res>
    implements _$$DeleteBudgetCopyWith<$Res> {
  __$$DeleteBudgetCopyWithImpl(
      _$DeleteBudget _value, $Res Function(_$DeleteBudget) _then)
      : super(_value, (v) => _then(v as _$DeleteBudget));

  @override
  _$DeleteBudget get _value => super._value as _$DeleteBudget;

  @override
  $Res call({
    Object? budget = freezed,
  }) {
    return _then(_$DeleteBudget(
      budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget,
    ));
  }
}

/// @nodoc

class _$DeleteBudget implements DeleteBudget {
  const _$DeleteBudget(this.budget);

  @override
  final Budget budget;

  @override
  String toString() {
    return 'BudgetEvent.deleteBudget(budget: $budget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBudget &&
            const DeepCollectionEquality().equals(other.budget, budget));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(budget));

  @JsonKey(ignore: true)
  @override
  _$$DeleteBudgetCopyWith<_$DeleteBudget> get copyWith =>
      __$$DeleteBudgetCopyWithImpl<_$DeleteBudget>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBudgets,
    required TResult Function(Budget budget) addBudget,
    required TResult Function(Budget budget) deleteBudget,
    required TResult Function(Budget updatedBudget) updateBudget,
    required TResult Function(List<Budget> budgets) budgetUpdated,
  }) {
    return deleteBudget(budget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
  }) {
    return deleteBudget?.call(budget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
    required TResult orElse(),
  }) {
    if (deleteBudget != null) {
      return deleteBudget(budget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBudgets value) loadBudgets,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(BudgetsUpdated value) budgetUpdated,
  }) {
    return deleteBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
  }) {
    return deleteBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
    required TResult orElse(),
  }) {
    if (deleteBudget != null) {
      return deleteBudget(this);
    }
    return orElse();
  }
}

abstract class DeleteBudget implements BudgetEvent {
  const factory DeleteBudget(final Budget budget) = _$DeleteBudget;

  Budget get budget => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteBudgetCopyWith<_$DeleteBudget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBudgetCopyWith<$Res> {
  factory _$$UpdateBudgetCopyWith(
          _$UpdateBudget value, $Res Function(_$UpdateBudget) then) =
      __$$UpdateBudgetCopyWithImpl<$Res>;
  $Res call({Budget updatedBudget});
}

/// @nodoc
class __$$UpdateBudgetCopyWithImpl<$Res> extends _$BudgetEventCopyWithImpl<$Res>
    implements _$$UpdateBudgetCopyWith<$Res> {
  __$$UpdateBudgetCopyWithImpl(
      _$UpdateBudget _value, $Res Function(_$UpdateBudget) _then)
      : super(_value, (v) => _then(v as _$UpdateBudget));

  @override
  _$UpdateBudget get _value => super._value as _$UpdateBudget;

  @override
  $Res call({
    Object? updatedBudget = freezed,
  }) {
    return _then(_$UpdateBudget(
      updatedBudget == freezed
          ? _value.updatedBudget
          : updatedBudget // ignore: cast_nullable_to_non_nullable
              as Budget,
    ));
  }
}

/// @nodoc

class _$UpdateBudget implements UpdateBudget {
  const _$UpdateBudget(this.updatedBudget);

  @override
  final Budget updatedBudget;

  @override
  String toString() {
    return 'BudgetEvent.updateBudget(updatedBudget: $updatedBudget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBudget &&
            const DeepCollectionEquality()
                .equals(other.updatedBudget, updatedBudget));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updatedBudget));

  @JsonKey(ignore: true)
  @override
  _$$UpdateBudgetCopyWith<_$UpdateBudget> get copyWith =>
      __$$UpdateBudgetCopyWithImpl<_$UpdateBudget>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBudgets,
    required TResult Function(Budget budget) addBudget,
    required TResult Function(Budget budget) deleteBudget,
    required TResult Function(Budget updatedBudget) updateBudget,
    required TResult Function(List<Budget> budgets) budgetUpdated,
  }) {
    return updateBudget(updatedBudget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
  }) {
    return updateBudget?.call(updatedBudget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
    required TResult orElse(),
  }) {
    if (updateBudget != null) {
      return updateBudget(updatedBudget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBudgets value) loadBudgets,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(BudgetsUpdated value) budgetUpdated,
  }) {
    return updateBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
  }) {
    return updateBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
    required TResult orElse(),
  }) {
    if (updateBudget != null) {
      return updateBudget(this);
    }
    return orElse();
  }
}

abstract class UpdateBudget implements BudgetEvent {
  const factory UpdateBudget(final Budget updatedBudget) = _$UpdateBudget;

  Budget get updatedBudget => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateBudgetCopyWith<_$UpdateBudget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BudgetsUpdatedCopyWith<$Res> {
  factory _$$BudgetsUpdatedCopyWith(
          _$BudgetsUpdated value, $Res Function(_$BudgetsUpdated) then) =
      __$$BudgetsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Budget> budgets});
}

/// @nodoc
class __$$BudgetsUpdatedCopyWithImpl<$Res>
    extends _$BudgetEventCopyWithImpl<$Res>
    implements _$$BudgetsUpdatedCopyWith<$Res> {
  __$$BudgetsUpdatedCopyWithImpl(
      _$BudgetsUpdated _value, $Res Function(_$BudgetsUpdated) _then)
      : super(_value, (v) => _then(v as _$BudgetsUpdated));

  @override
  _$BudgetsUpdated get _value => super._value as _$BudgetsUpdated;

  @override
  $Res call({
    Object? budgets = freezed,
  }) {
    return _then(_$BudgetsUpdated(
      budgets == freezed
          ? _value._budgets
          : budgets // ignore: cast_nullable_to_non_nullable
              as List<Budget>,
    ));
  }
}

/// @nodoc

class _$BudgetsUpdated implements BudgetsUpdated {
  const _$BudgetsUpdated(final List<Budget> budgets) : _budgets = budgets;

  final List<Budget> _budgets;
  @override
  List<Budget> get budgets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_budgets);
  }

  @override
  String toString() {
    return 'BudgetEvent.budgetUpdated(budgets: $budgets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetsUpdated &&
            const DeepCollectionEquality().equals(other._budgets, _budgets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_budgets));

  @JsonKey(ignore: true)
  @override
  _$$BudgetsUpdatedCopyWith<_$BudgetsUpdated> get copyWith =>
      __$$BudgetsUpdatedCopyWithImpl<_$BudgetsUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBudgets,
    required TResult Function(Budget budget) addBudget,
    required TResult Function(Budget budget) deleteBudget,
    required TResult Function(Budget updatedBudget) updateBudget,
    required TResult Function(List<Budget> budgets) budgetUpdated,
  }) {
    return budgetUpdated(budgets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
  }) {
    return budgetUpdated?.call(budgets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBudgets,
    TResult Function(Budget budget)? addBudget,
    TResult Function(Budget budget)? deleteBudget,
    TResult Function(Budget updatedBudget)? updateBudget,
    TResult Function(List<Budget> budgets)? budgetUpdated,
    required TResult orElse(),
  }) {
    if (budgetUpdated != null) {
      return budgetUpdated(budgets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBudgets value) loadBudgets,
    required TResult Function(AddBudget value) addBudget,
    required TResult Function(DeleteBudget value) deleteBudget,
    required TResult Function(UpdateBudget value) updateBudget,
    required TResult Function(BudgetsUpdated value) budgetUpdated,
  }) {
    return budgetUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
  }) {
    return budgetUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBudgets value)? loadBudgets,
    TResult Function(AddBudget value)? addBudget,
    TResult Function(DeleteBudget value)? deleteBudget,
    TResult Function(UpdateBudget value)? updateBudget,
    TResult Function(BudgetsUpdated value)? budgetUpdated,
    required TResult orElse(),
  }) {
    if (budgetUpdated != null) {
      return budgetUpdated(this);
    }
    return orElse();
  }
}

abstract class BudgetsUpdated implements BudgetEvent {
  const factory BudgetsUpdated(final List<Budget> budgets) = _$BudgetsUpdated;

  List<Budget> get budgets => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BudgetsUpdatedCopyWith<_$BudgetsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BudgetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() budgetsLoading,
    required TResult Function(List<Budget> budgets) budgetsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? budgetsLoading,
    TResult Function(List<Budget> budgets)? budgetsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? budgetsLoading,
    TResult Function(List<Budget> budgets)? budgetsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BudgetsLoading value) budgetsLoading,
    required TResult Function(BudgetsLoaded value) budgetsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BudgetsLoading value)? budgetsLoading,
    TResult Function(BudgetsLoaded value)? budgetsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BudgetsLoading value)? budgetsLoading,
    TResult Function(BudgetsLoaded value)? budgetsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetStateCopyWith<$Res> {
  factory $BudgetStateCopyWith(
          BudgetState value, $Res Function(BudgetState) then) =
      _$BudgetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BudgetStateCopyWithImpl<$Res> implements $BudgetStateCopyWith<$Res> {
  _$BudgetStateCopyWithImpl(this._value, this._then);

  final BudgetState _value;
  // ignore: unused_field
  final $Res Function(BudgetState) _then;
}

/// @nodoc
abstract class _$$BudgetsLoadingCopyWith<$Res> {
  factory _$$BudgetsLoadingCopyWith(
          _$BudgetsLoading value, $Res Function(_$BudgetsLoading) then) =
      __$$BudgetsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BudgetsLoadingCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res>
    implements _$$BudgetsLoadingCopyWith<$Res> {
  __$$BudgetsLoadingCopyWithImpl(
      _$BudgetsLoading _value, $Res Function(_$BudgetsLoading) _then)
      : super(_value, (v) => _then(v as _$BudgetsLoading));

  @override
  _$BudgetsLoading get _value => super._value as _$BudgetsLoading;
}

/// @nodoc

class _$BudgetsLoading implements BudgetsLoading {
  const _$BudgetsLoading();

  @override
  String toString() {
    return 'BudgetState.budgetsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BudgetsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() budgetsLoading,
    required TResult Function(List<Budget> budgets) budgetsLoaded,
  }) {
    return budgetsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? budgetsLoading,
    TResult Function(List<Budget> budgets)? budgetsLoaded,
  }) {
    return budgetsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? budgetsLoading,
    TResult Function(List<Budget> budgets)? budgetsLoaded,
    required TResult orElse(),
  }) {
    if (budgetsLoading != null) {
      return budgetsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BudgetsLoading value) budgetsLoading,
    required TResult Function(BudgetsLoaded value) budgetsLoaded,
  }) {
    return budgetsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BudgetsLoading value)? budgetsLoading,
    TResult Function(BudgetsLoaded value)? budgetsLoaded,
  }) {
    return budgetsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BudgetsLoading value)? budgetsLoading,
    TResult Function(BudgetsLoaded value)? budgetsLoaded,
    required TResult orElse(),
  }) {
    if (budgetsLoading != null) {
      return budgetsLoading(this);
    }
    return orElse();
  }
}

abstract class BudgetsLoading implements BudgetState {
  const factory BudgetsLoading() = _$BudgetsLoading;
}

/// @nodoc
abstract class _$$BudgetsLoadedCopyWith<$Res> {
  factory _$$BudgetsLoadedCopyWith(
          _$BudgetsLoaded value, $Res Function(_$BudgetsLoaded) then) =
      __$$BudgetsLoadedCopyWithImpl<$Res>;
  $Res call({List<Budget> budgets});
}

/// @nodoc
class __$$BudgetsLoadedCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res>
    implements _$$BudgetsLoadedCopyWith<$Res> {
  __$$BudgetsLoadedCopyWithImpl(
      _$BudgetsLoaded _value, $Res Function(_$BudgetsLoaded) _then)
      : super(_value, (v) => _then(v as _$BudgetsLoaded));

  @override
  _$BudgetsLoaded get _value => super._value as _$BudgetsLoaded;

  @override
  $Res call({
    Object? budgets = freezed,
  }) {
    return _then(_$BudgetsLoaded(
      budgets == freezed
          ? _value._budgets
          : budgets // ignore: cast_nullable_to_non_nullable
              as List<Budget>,
    ));
  }
}

/// @nodoc

class _$BudgetsLoaded implements BudgetsLoaded {
  const _$BudgetsLoaded(final List<Budget> budgets) : _budgets = budgets;

  final List<Budget> _budgets;
  @override
  List<Budget> get budgets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_budgets);
  }

  @override
  String toString() {
    return 'BudgetState.budgetsLoaded(budgets: $budgets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetsLoaded &&
            const DeepCollectionEquality().equals(other._budgets, _budgets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_budgets));

  @JsonKey(ignore: true)
  @override
  _$$BudgetsLoadedCopyWith<_$BudgetsLoaded> get copyWith =>
      __$$BudgetsLoadedCopyWithImpl<_$BudgetsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() budgetsLoading,
    required TResult Function(List<Budget> budgets) budgetsLoaded,
  }) {
    return budgetsLoaded(budgets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? budgetsLoading,
    TResult Function(List<Budget> budgets)? budgetsLoaded,
  }) {
    return budgetsLoaded?.call(budgets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? budgetsLoading,
    TResult Function(List<Budget> budgets)? budgetsLoaded,
    required TResult orElse(),
  }) {
    if (budgetsLoaded != null) {
      return budgetsLoaded(budgets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BudgetsLoading value) budgetsLoading,
    required TResult Function(BudgetsLoaded value) budgetsLoaded,
  }) {
    return budgetsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BudgetsLoading value)? budgetsLoading,
    TResult Function(BudgetsLoaded value)? budgetsLoaded,
  }) {
    return budgetsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BudgetsLoading value)? budgetsLoading,
    TResult Function(BudgetsLoaded value)? budgetsLoaded,
    required TResult orElse(),
  }) {
    if (budgetsLoaded != null) {
      return budgetsLoaded(this);
    }
    return orElse();
  }
}

abstract class BudgetsLoaded implements BudgetState {
  const factory BudgetsLoaded(final List<Budget> budgets) = _$BudgetsLoaded;

  List<Budget> get budgets => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BudgetsLoadedCopyWith<_$BudgetsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
