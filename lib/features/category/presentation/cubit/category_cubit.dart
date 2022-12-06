import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/category/data/datasources/drift_database.dart';
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/category.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._repo) : super(const CategoryState()) {
    load();
  }
  final ICategoryRepository _repo;
  late StreamSubscription<List<Category>> _streamSubscription;

  Future<void> load() async {
    final c = _repo.watchAllCategories();

    _streamSubscription = c.listen((event) {
      emit(
        state.copyWith(
          categories: event
              .map(
                (e) => CategoryEntity(
                  color: Color(e.color),
                  name: e.name,
                  emoji: '🍏',
                ),
              )
              .toList(),
        ),
      );
    });
  }

  Future<void> addNewCategory() async {
    final result = await _repo.addNewCategory(
      const CategoryEntity(emoji: '🍏'),
    );
    result.fold(
      (l) {
        emit(state.copyWith(addCategoryErrorMessage: l.toString()));
      },
      (r) {},
    );
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
