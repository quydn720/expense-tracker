import 'package:expense_tracker/features/category/data/datasources/drift_database.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../cubit/category_cubit.dart';

class SelectCategoryScreen extends StatelessWidget {
  const SelectCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final db = context.read<MyDatabase>();

    return BlocProvider(
      create: (context) => CategoryCubit(
        LocalCategoryRepository(db.categoriesDao),
      ),
      child: Builder(
        builder: (context) {
          final categories = context.watch<CategoryCubit>().state.categories;
          return Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              onPressed: () async {
                await showModalBottomSheet<void>(
                  context: context,
                  builder: (_) {
                    return BlocProvider.value(
                      value: context.read<CategoryCubit>(),
                      child: const AddCategoryBottomSheet(),
                    );
                  },
                );
              },
              label: const Text('Add category'),
              icon: const Icon(FontAwesomeIcons.plus),
            ),
            appBar: DefaultAppBar(
              title: 'Select Category',
              trailings: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                )
              ],
            ),
            body: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: categories
                  .map(
                    (e) => Column(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: e.backgroundColor,
                          child: Text(
                            e.emoji,
                            style: const TextStyle(fontSize: 32),
                          ),
                        ),
                        Text(e.name),
                      ],
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}

class AddCategoryBottomSheet extends StatelessWidget {
  const AddCategoryBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final errorText =
        context.watch<CategoryCubit>().state.addCategoryErrorMessage;
    return Column(
      children: [
        TextField(decoration: InputDecoration(errorText: errorText)),
        TextButton(
          onPressed: context.read<CategoryCubit>().addNewCategory,
          child: const Text('Add'),
        )
      ],
    );
  }
}

class CategoryGroupCard extends StatelessWidget {
  const CategoryGroupCard({
    super.key,
    required this.groupName,
    required this.categories,
  });
  final String groupName;
  final List<CategoryEntity> categories;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(groupName, style: Theme.of(context).textTheme.headline3),
            const SizedBox(height: 16),
            Wrap(
              runSpacing: 10,
              spacing: 20,
              children: categories
                  .map(
                    (e) => Column(
                      children: [
                        CircleAvatar(
                          radius: 36,
                          backgroundColor: e.backgroundColor,
                          child: Icon(
                            FontAwesomeIcons.shoePrints,
                            color: e.color,
                          ),
                        ),
                        Text(e.name),
                      ],
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
