// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'budget_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BudgetEventTearOff {
  const _$BudgetEventTearOff();

  LoadBudgets loadBudgets() {
    return const LoadBudgets();
  }

  AddBudget addBudget(Budget budget) {
    return AddBudget(
      budget,
    );
  }

  DeleteBudget deleteBudget(Budget budget) {
    return DeleteBudget(
      budget,
    );
  }

  UpdateBudget updateBudget(Budget updatedBudget) {
    return UpdateBudget(
      updatedBudget,
    );
  }

  BudgetsUpdated budgetUpdated(List<Budget> budgets) {
    return BudgetsUpdated(
      budgets,
    );
  }
}

/// @nodoc
const $BudgetEvent = _$BudgetEventTearOff();

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
abstract class $LoadBudgetsCopyWith<$Res> {
  factory $LoadBudgetsCopyWith(
          LoadBudgets value, $Res Function(LoadBudgets) then) =
      _$LoadBudgetsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadBudgetsCopyWithImpl<$Res> extends _$BudgetEventCopyWithImpl<$Res>
    implements $LoadBudgetsCopyWith<$Res> {
  _$LoadBudgetsCopyWithImpl(
      LoadBudgets _value, $Res Function(LoadBudgets) _then)
      : super(_value, (v) => _then(v as LoadBudgets));

  @override
  LoadBudgets get _value => super._value as LoadBudgets;
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
        (other.runtimeType == runtimeType && other is LoadBudgets);
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
abstract class $AddBudgetCopyWith<$Res> {
  factory $AddBudgetCopyWith(AddBudget value, $Res Function(AddBudget) then) =
      _$AddBudgetCopyWithImpl<$Res>;
  $Res call({Budget budget});
}

/// @nodoc
class _$AddBudgetCopyWithImpl<$Res> extends _$BudgetEventCopyWithImpl<$Res>
    implements $AddBudgetCopyWith<$Res> {
  _$AddBudgetCopyWithImpl(AddBudget _value, $Res Function(AddBudget) _then)
      : super(_value, (v) => _then(v as AddBudget));

  @override
  AddBudget get _value => super._value as AddBudget;

  @override
  $Res call({
    Object? budget = freezed,
  }) {
    return _then(AddBudget(
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
            other is AddBudget &&
            (identical(other.budget, budget) || other.budget == budget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, budget);

  @JsonKey(ignore: true)
  @override
  $AddBudgetCopyWith<AddBudget> get copyWith =>
      _$AddBudgetCopyWithImpl<AddBudget>(this, _$identity);

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
  const factory AddBudget(Budget budget) = _$AddBudget;

  Budget get budget;
  @JsonKey(ignore: true)
  $AddBudgetCopyWith<AddBudget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteBudgetCopyWith<$Res> {
  factory $DeleteBudgetCopyWith(
          DeleteBudget value, $Res Function(DeleteBudget) then) =
      _$DeleteBudgetCopyWithImpl<$Res>;
  $Res call({Budget budget});
}

/// @nodoc
class _$DeleteBudgetCopyWithImpl<$Res> extends _$BudgetEventCopyWithImpl<$Res>
    implements $DeleteBudgetCopyWith<$Res> {
  _$DeleteBudgetCopyWithImpl(
      DeleteBudget _value, $Res Function(DeleteBudget) _then)
      : super(_value, (v) => _then(v as DeleteBudget));

  @override
  DeleteBudget get _value => super._value as DeleteBudget;

  @override
  $Res call({
    Object? budget = freezed,
  }) {
    return _then(DeleteBudget(
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
            other is DeleteBudget &&
            (identical(other.budget, budget) || other.budget == budget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, budget);

  @JsonKey(ignore: true)
  @override
  $DeleteBudgetCopyWith<DeleteBudget> get copyWith =>
      _$DeleteBudgetCopyWithImpl<DeleteBudget>(this, _$identity);

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
  const factory DeleteBudget(Budget budget) = _$DeleteBudget;

  Budget get budget;
  @JsonKey(ignore: true)
  $DeleteBudgetCopyWith<DeleteBudget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateBudgetCopyWith<$Res> {
  factory $UpdateBudgetCopyWith(
          UpdateBudget value, $Res Function(UpdateBudget) then) =
      _$UpdateBudgetCopyWithImpl<$Res>;
  $Res call({Budget updatedBudget});
}

/// @nodoc
class _$UpdateBudgetCopyWithImpl<$Res> extends _$BudgetEventCopyWithImpl<$Res>
    implements $UpdateBudgetCopyWith<$Res> {
  _$UpdateBudgetCopyWithImpl(
      UpdateBudget _value, $Res Function(UpdateBudget) _then)
      : super(_value, (v) => _then(v as UpdateBudget));

  @override
  UpdateBudget get _value => super._value as UpdateBudget;

  @override
  $Res call({
    Object? updatedBudget = freezed,
  }) {
    return _then(UpdateBudget(
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
            other is UpdateBudget &&
            (identical(other.updatedBudget, updatedBudget) ||
                other.updatedBudget == updatedBudget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedBudget);

  @JsonKey(ignore: true)
  @override
  $UpdateBudgetCopyWith<UpdateBudget> get copyWith =>
      _$UpdateBudgetCopyWithImpl<UpdateBudget>(this, _$identity);

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
  const factory UpdateBudget(Budget updatedBudget) = _$UpdateBudget;

  Budget get updatedBudget;
  @JsonKey(ignore: true)
  $UpdateBudgetCopyWith<UpdateBudget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetsUpdatedCopyWith<$Res> {
  factory $BudgetsUpdatedCopyWith(
          BudgetsUpdated value, $Res Function(BudgetsUpdated) then) =
      _$BudgetsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Budget> budgets});
}

/// @nodoc
class _$BudgetsUpdatedCopyWithImpl<$Res> extends _$BudgetEventCopyWithImpl<$Res>
    implements $BudgetsUpdatedCopyWith<$Res> {
  _$BudgetsUpdatedCopyWithImpl(
      BudgetsUpdated _value, $Res Function(BudgetsUpdated) _then)
      : super(_value, (v) => _then(v as BudgetsUpdated));

  @override
  BudgetsUpdated get _value => super._value as BudgetsUpdated;

  @override
  $Res call({
    Object? budgets = freezed,
  }) {
    return _then(BudgetsUpdated(
      budgets == freezed
          ? _value.budgets
          : budgets // ignore: cast_nullable_to_non_nullable
              as List<Budget>,
    ));
  }
}

/// @nodoc

class _$BudgetsUpdated implements BudgetsUpdated {
  const _$BudgetsUpdated(this.budgets);

  @override
  final List<Budget> budgets;

  @override
  String toString() {
    return 'BudgetEvent.budgetUpdated(budgets: $budgets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BudgetsUpdated &&
            const DeepCollectionEquality().equals(other.budgets, budgets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(budgets));

  @JsonKey(ignore: true)
  @override
  $BudgetsUpdatedCopyWith<BudgetsUpdated> get copyWith =>
      _$BudgetsUpdatedCopyWithImpl<BudgetsUpdated>(this, _$identity);

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
  const factory BudgetsUpdated(List<Budget> budgets) = _$BudgetsUpdated;

  List<Budget> get budgets;
  @JsonKey(ignore: true)
  $BudgetsUpdatedCopyWith<BudgetsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BudgetStateTearOff {
  const _$BudgetStateTearOff();

  BudgetsLoading budgetsLoading() {
    return const BudgetsLoading();
  }

  BudgetsLoaded budgetsLoaded(List<Budget> budgets) {
    return BudgetsLoaded(
      budgets,
    );
  }
}

/// @nodoc
const $BudgetState = _$BudgetStateTearOff();

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
abstract class $BudgetsLoadingCopyWith<$Res> {
  factory $BudgetsLoadingCopyWith(
          BudgetsLoading value, $Res Function(BudgetsLoading) then) =
      _$BudgetsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$BudgetsLoadingCopyWithImpl<$Res> extends _$BudgetStateCopyWithImpl<$Res>
    implements $BudgetsLoadingCopyWith<$Res> {
  _$BudgetsLoadingCopyWithImpl(
      BudgetsLoading _value, $Res Function(BudgetsLoading) _then)
      : super(_value, (v) => _then(v as BudgetsLoading));

  @override
  BudgetsLoading get _value => super._value as BudgetsLoading;
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
        (other.runtimeType == runtimeType && other is BudgetsLoading);
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
abstract class $BudgetsLoadedCopyWith<$Res> {
  factory $BudgetsLoadedCopyWith(
          BudgetsLoaded value, $Res Function(BudgetsLoaded) then) =
      _$BudgetsLoadedCopyWithImpl<$Res>;
  $Res call({List<Budget> budgets});
}

/// @nodoc
class _$BudgetsLoadedCopyWithImpl<$Res> extends _$BudgetStateCopyWithImpl<$Res>
    implements $BudgetsLoadedCopyWith<$Res> {
  _$BudgetsLoadedCopyWithImpl(
      BudgetsLoaded _value, $Res Function(BudgetsLoaded) _then)
      : super(_value, (v) => _then(v as BudgetsLoaded));

  @override
  BudgetsLoaded get _value => super._value as BudgetsLoaded;

  @override
  $Res call({
    Object? budgets = freezed,
  }) {
    return _then(BudgetsLoaded(
      budgets == freezed
          ? _value.budgets
          : budgets // ignore: cast_nullable_to_non_nullable
              as List<Budget>,
    ));
  }
}

/// @nodoc

class _$BudgetsLoaded implements BudgetsLoaded {
  const _$BudgetsLoaded(this.budgets);

  @override
  final List<Budget> budgets;

  @override
  String toString() {
    return 'BudgetState.budgetsLoaded(budgets: $budgets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BudgetsLoaded &&
            const DeepCollectionEquality().equals(other.budgets, budgets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(budgets));

  @JsonKey(ignore: true)
  @override
  $BudgetsLoadedCopyWith<BudgetsLoaded> get copyWith =>
      _$BudgetsLoadedCopyWithImpl<BudgetsLoaded>(this, _$identity);

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
  const factory BudgetsLoaded(List<Budget> budgets) = _$BudgetsLoaded;

  List<Budget> get budgets;
  @JsonKey(ignore: true)
  $BudgetsLoadedCopyWith<BudgetsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
