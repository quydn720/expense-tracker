import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_cubit.freezed.dart';
part 'category_state.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._repo) : super(const CategoryState()) {
    _load();
  }
  final ICategoryRepository _repo;
  late StreamSubscription<List<CategoryEntity>> _streamSubscription;

  Future<void> _load() async {
    final c = _repo.watchAllCategories();

    _streamSubscription = c.listen((event) {
      emit(state.copyWith(categories: event));
    });
  }

  Future<void> deleteCategory(CategoryEntity category) async {
    await _repo.deleteCategory(category);
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
