part of 'edit_category_cubit.dart';

enum EditCategoryStatus { initial, loading, success, failure }

@freezed
class EditCategoryState with _$EditCategoryState {
  const factory EditCategoryState({
    @Default(EditCategoryStatus.initial) EditCategoryStatus status,
    @Default('') String name,
    required IconData iconData,
    required Color color,
    @Default(CategoryType.expense) CategoryType categoryType,
  }) = _EditCategoryState;
}
