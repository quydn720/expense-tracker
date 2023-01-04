import 'dart:math' as math;
import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_category_state.dart';
part 'edit_category_cubit.freezed.dart';

class EditCategoryCubit extends Cubit<EditCategoryState> {
  EditCategoryCubit(this._addCategoryUseCase)
      : super(EditCategoryState(iconData: Icons.abc, color: randomColorValue));
  final AddCategoryUseCase _addCategoryUseCase;

  static Color randomColorValue =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1);

  void changeName(String name) {
    emit(state.copyWith(name: name));
  }

  Future<void> submit() async {
    final category = CategoryEntity(
      name: state.name,
      icon: state.iconData,
      color: state.color,
      categoryType: state.categoryType,
    );
    try {
      await _addCategoryUseCase(category);
      emit(state.copyWith(status: EditCategoryStatus.success));
    } catch (e) {
      emit(state.copyWith(status: EditCategoryStatus.failure));
    }
  }

  void changeCategoryType(CategoryType? value) {
    emit(state.copyWith(categoryType: value ?? CategoryType.expense));
  }

  void changeColor(Color selectedColor) {
    emit(state.copyWith(color: selectedColor));
  }

  void changeIcon(IconData icon) {
    emit(state.copyWith(iconData: icon));
  }
}

class AddCategoryUseCase {
  AddCategoryUseCase({required ICategoryRepository repo}) : _repo = repo;

  final ICategoryRepository _repo;
  Future<void> call(CategoryEntity category) async {
    await _repo.addNewCategory(category);
  }
}
