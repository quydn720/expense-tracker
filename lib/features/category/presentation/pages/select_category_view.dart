import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

const searchIconButtonKey = Key('selectCategoryScreen_search_iconButton');

class SelectCategoryProvider extends StatelessWidget {
  const SelectCategoryProvider({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CategoryCubit>(),
      child: SelectCategoryView(title: title),
    );
  }
}

class SelectCategoryView extends StatelessWidget {
  const SelectCategoryView({super.key, this.title});
  final String? title;

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
        appBar: DefaultAppBar(title: title ?? 'Select Category'),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              labelColor: Theme.of(context).colorScheme.onBackground,
              tabs: [
                Tab(text: context.l10n.expense),
                Tab(text: context.l10n.income),
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
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) => ListTile(
        contentPadding: const EdgeInsets.only(bottom: 8),
        minVerticalPadding: 7,
        onTap: () => GoRouter.of(context).pop(categories.elementAt(index)),
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: categories.elementAt(index).backgroundColor,
          child: Icon(
            categories.elementAt(index).icon,
            color: categories.elementAt(index).color.withOpacity(1),
          ),
        ),
        title: Text(
          categories.elementAt(index).name,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      itemCount: categories.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
