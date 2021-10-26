// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionFormEventTearOff {
  const _$TransactionFormEventTearOff();

  Initialized initialized() {
    return const Initialized();
  }

  CategoryChanged categoryChanged(Category category) {
    return CategoryChanged(
      category,
    );
  }

  DescriptionChanged descriptionChanged(String description) {
    return DescriptionChanged(
      description,
    );
  }

  WalletChanged walletChanged(Wallet wallet) {
    return WalletChanged(
      wallet,
    );
  }

  AmountChanged amountChanged(String amount) {
    return AmountChanged(
      amount,
    );
  }

  CommitPressed commitPressed() {
    return const CommitPressed();
  }
}

/// @nodoc
const $TransactionFormEvent = _$TransactionFormEventTearOff();

/// @nodoc
mixin _$TransactionFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(Wallet wallet) walletChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() commitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(WalletChanged value) walletChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(CommitPressed value) commitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFormEventCopyWith<$Res> {
  factory $TransactionFormEventCopyWith(TransactionFormEvent value,
          $Res Function(TransactionFormEvent) then) =
      _$TransactionFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionFormEventCopyWithImpl<$Res>
    implements $TransactionFormEventCopyWith<$Res> {
  _$TransactionFormEventCopyWithImpl(this._value, this._then);

  final TransactionFormEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionFormEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized();

  @override
  String toString() {
    return 'TransactionFormEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(Wallet wallet) walletChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() commitPressed,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(WalletChanged value) walletChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(CommitPressed value) commitPressed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements TransactionFormEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class $CategoryChangedCopyWith<$Res> {
  factory $CategoryChangedCopyWith(
          CategoryChanged value, $Res Function(CategoryChanged) then) =
      _$CategoryChangedCopyWithImpl<$Res>;
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$CategoryChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements $CategoryChangedCopyWith<$Res> {
  _$CategoryChangedCopyWithImpl(
      CategoryChanged _value, $Res Function(CategoryChanged) _then)
      : super(_value, (v) => _then(v as CategoryChanged));

  @override
  CategoryChanged get _value => super._value as CategoryChanged;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(CategoryChanged(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$CategoryChanged implements CategoryChanged {
  const _$CategoryChanged(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'TransactionFormEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryChanged &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  $CategoryChangedCopyWith<CategoryChanged> get copyWith =>
      _$CategoryChangedCopyWithImpl<CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(Wallet wallet) walletChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() commitPressed,
  }) {
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
  }) {
    return categoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(WalletChanged value) walletChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(CommitPressed value) commitPressed,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class CategoryChanged implements TransactionFormEvent {
  const factory CategoryChanged(Category category) = _$CategoryChanged;

  Category get category;
  @JsonKey(ignore: true)
  $CategoryChangedCopyWith<CategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionChangedCopyWith<$Res> {
  factory $DescriptionChangedCopyWith(
          DescriptionChanged value, $Res Function(DescriptionChanged) then) =
      _$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$DescriptionChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements $DescriptionChangedCopyWith<$Res> {
  _$DescriptionChangedCopyWithImpl(
      DescriptionChanged _value, $Res Function(DescriptionChanged) _then)
      : super(_value, (v) => _then(v as DescriptionChanged));

  @override
  DescriptionChanged get _value => super._value as DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChanged implements DescriptionChanged {
  const _$DescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'TransactionFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescriptionChanged &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith =>
      _$DescriptionChangedCopyWithImpl<DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(Wallet wallet) walletChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() commitPressed,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(WalletChanged value) walletChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(CommitPressed value) commitPressed,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class DescriptionChanged implements TransactionFormEvent {
  const factory DescriptionChanged(String description) = _$DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletChangedCopyWith<$Res> {
  factory $WalletChangedCopyWith(
          WalletChanged value, $Res Function(WalletChanged) then) =
      _$WalletChangedCopyWithImpl<$Res>;
  $Res call({Wallet wallet});

  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$WalletChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements $WalletChangedCopyWith<$Res> {
  _$WalletChangedCopyWithImpl(
      WalletChanged _value, $Res Function(WalletChanged) _then)
      : super(_value, (v) => _then(v as WalletChanged));

  @override
  WalletChanged get _value => super._value as WalletChanged;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(WalletChanged(
      wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }

  @override
  $WalletCopyWith<$Res> get wallet {
    return $WalletCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc

class _$WalletChanged implements WalletChanged {
  const _$WalletChanged(this.wallet);

  @override
  final Wallet wallet;

  @override
  String toString() {
    return 'TransactionFormEvent.walletChanged(wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletChanged &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wallet);

  @JsonKey(ignore: true)
  @override
  $WalletChangedCopyWith<WalletChanged> get copyWith =>
      _$WalletChangedCopyWithImpl<WalletChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(Wallet wallet) walletChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() commitPressed,
  }) {
    return walletChanged(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
  }) {
    return walletChanged?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
    required TResult orElse(),
  }) {
    if (walletChanged != null) {
      return walletChanged(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(WalletChanged value) walletChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(CommitPressed value) commitPressed,
  }) {
    return walletChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
  }) {
    return walletChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
    required TResult orElse(),
  }) {
    if (walletChanged != null) {
      return walletChanged(this);
    }
    return orElse();
  }
}

abstract class WalletChanged implements TransactionFormEvent {
  const factory WalletChanged(Wallet wallet) = _$WalletChanged;

  Wallet get wallet;
  @JsonKey(ignore: true)
  $WalletChangedCopyWith<WalletChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountChangedCopyWith<$Res> {
  factory $AmountChangedCopyWith(
          AmountChanged value, $Res Function(AmountChanged) then) =
      _$AmountChangedCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class _$AmountChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements $AmountChangedCopyWith<$Res> {
  _$AmountChangedCopyWithImpl(
      AmountChanged _value, $Res Function(AmountChanged) _then)
      : super(_value, (v) => _then(v as AmountChanged));

  @override
  AmountChanged get _value => super._value as AmountChanged;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(AmountChanged(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountChanged implements AmountChanged {
  const _$AmountChanged(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'TransactionFormEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AmountChanged &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  $AmountChangedCopyWith<AmountChanged> get copyWith =>
      _$AmountChangedCopyWithImpl<AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(Wallet wallet) walletChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() commitPressed,
  }) {
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
  }) {
    return amountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(WalletChanged value) walletChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(CommitPressed value) commitPressed,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class AmountChanged implements TransactionFormEvent {
  const factory AmountChanged(String amount) = _$AmountChanged;

  String get amount;
  @JsonKey(ignore: true)
  $AmountChangedCopyWith<AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitPressedCopyWith<$Res> {
  factory $CommitPressedCopyWith(
          CommitPressed value, $Res Function(CommitPressed) then) =
      _$CommitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommitPressedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements $CommitPressedCopyWith<$Res> {
  _$CommitPressedCopyWithImpl(
      CommitPressed _value, $Res Function(CommitPressed) _then)
      : super(_value, (v) => _then(v as CommitPressed));

  @override
  CommitPressed get _value => super._value as CommitPressed;
}

/// @nodoc

class _$CommitPressed implements CommitPressed {
  const _$CommitPressed();

  @override
  String toString() {
    return 'TransactionFormEvent.commitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CommitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Category category) categoryChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(Wallet wallet) walletChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() commitPressed,
  }) {
    return commitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
  }) {
    return commitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Category category)? categoryChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(Wallet wallet)? walletChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? commitPressed,
    required TResult orElse(),
  }) {
    if (commitPressed != null) {
      return commitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(WalletChanged value) walletChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(CommitPressed value) commitPressed,
  }) {
    return commitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
  }) {
    return commitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(WalletChanged value)? walletChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(CommitPressed value)? commitPressed,
    required TResult orElse(),
  }) {
    if (commitPressed != null) {
      return commitPressed(this);
    }
    return orElse();
  }
}

abstract class CommitPressed implements TransactionFormEvent {
  const factory CommitPressed() = _$CommitPressed;
}

/// @nodoc
class _$TransactionFormStateTearOff {
  const _$TransactionFormStateTearOff();

  _TransactionFormState call(
      {required Transaction transaction,
      required Wallet wallet,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<TransactionFailure, Unit>>
          saveFailureOrSuccessOption}) {
    return _TransactionFormState(
      transaction: transaction,
      wallet: wallet,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $TransactionFormState = _$TransactionFormStateTearOff();

/// @nodoc
mixin _$TransactionFormState {
  Transaction get transaction => throw _privateConstructorUsedError;
  Wallet get wallet => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<TransactionFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionFormStateCopyWith<TransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFormStateCopyWith<$Res> {
  factory $TransactionFormStateCopyWith(TransactionFormState value,
          $Res Function(TransactionFormState) then) =
      _$TransactionFormStateCopyWithImpl<$Res>;
  $Res call(
      {Transaction transaction,
      Wallet wallet,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TransactionFailure, Unit>> saveFailureOrSuccessOption});

  $TransactionCopyWith<$Res> get transaction;
  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$TransactionFormStateCopyWithImpl<$Res>
    implements $TransactionFormStateCopyWith<$Res> {
  _$TransactionFormStateCopyWithImpl(this._value, this._then);

  final TransactionFormState _value;
  // ignore: unused_field
  final $Res Function(TransactionFormState) _then;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? wallet = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
    ));
  }

  @override
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }

  @override
  $WalletCopyWith<$Res> get wallet {
    return $WalletCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionFormStateCopyWith<$Res>
    implements $TransactionFormStateCopyWith<$Res> {
  factory _$TransactionFormStateCopyWith(_TransactionFormState value,
          $Res Function(_TransactionFormState) then) =
      __$TransactionFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Transaction transaction,
      Wallet wallet,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TransactionFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TransactionCopyWith<$Res> get transaction;
  @override
  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class __$TransactionFormStateCopyWithImpl<$Res>
    extends _$TransactionFormStateCopyWithImpl<$Res>
    implements _$TransactionFormStateCopyWith<$Res> {
  __$TransactionFormStateCopyWithImpl(
      _TransactionFormState _value, $Res Function(_TransactionFormState) _then)
      : super(_value, (v) => _then(v as _TransactionFormState));

  @override
  _TransactionFormState get _value => super._value as _TransactionFormState;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? wallet = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_TransactionFormState(
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_TransactionFormState implements _TransactionFormState {
  const _$_TransactionFormState(
      {required this.transaction,
      required this.wallet,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Transaction transaction;
  @override
  final Wallet wallet;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<TransactionFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TransactionFormState(transaction: $transaction, wallet: $wallet, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionFormState &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction, wallet,
      showErrorMessages, isEditing, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$TransactionFormStateCopyWith<_TransactionFormState> get copyWith =>
      __$TransactionFormStateCopyWithImpl<_TransactionFormState>(
          this, _$identity);
}

abstract class _TransactionFormState implements TransactionFormState {
  const factory _TransactionFormState(
      {required Transaction transaction,
      required Wallet wallet,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<TransactionFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_TransactionFormState;

  @override
  Transaction get transaction;
  @override
  Wallet get wallet;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<TransactionFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$TransactionFormStateCopyWith<_TransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
