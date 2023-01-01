import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart';
import 'package:expense_tracker/features/category/presentation/widgets/category_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

const searchIconButtonKey = Key('selectCategoryScreen_search_iconButton');

class SelectCategoryProvider extends StatelessWidget {
  const SelectCategoryProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CategoryCubit>(),
      child: const SelectCategoryView(),
    );
  }
}

class SelectCategoryView extends StatelessWidget {
  const SelectCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = context.watch<CategoryCubit>().state.categories;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          onPressed: () async {
            await showModalBottomSheet<void>(
              isScrollControlled: true,
              isDismissible: false,
              enableDrag: false,
              context: context,
              builder: (_) {
                return FractionallySizedBox(
                  heightFactor: 0.9,
                  child: BlocProvider.value(
                    value: context.read<CategoryCubit>(),
                    child: const SelectCategoryProvider(),
                  ),
                );
              },
            );
          },
          label: const Text('Add category'),
          icon: const Icon(FontAwesomeIcons.plus),
        ),
        appBar: const DefaultAppBar(title: 'Select Category'),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(text: 'Expense'),
                Tab(text: 'Income'),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: TabBarView(
                children: [
                  _CategoryList(
                    categories: categories.where((c) => c.isExpense),
                  ),
                  _CategoryList(
                    categories: categories.where((c) => c.isIncome),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({
    required this.categories,
  });

  final Iterable<CategoryEntity> categories;
  // final VoidCallback onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: categories
          .map(
            (c) => ListTile(
              onTap: () => GoRouter.of(context).pop(c),
              leading: CircleAvatar(
                radius: 28,
                backgroundColor: c.backgroundColor,
                child: FaIcon(c.icon, color: c.color),
              ),
              title: Text(c.name),
            ),
          )
          .toList(),
    );
  }
}
