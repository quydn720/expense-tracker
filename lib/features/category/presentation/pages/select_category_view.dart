// ignore_for_file: avoid_dynamic_calls

import 'dart:async';

import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/extensions/show_alert_dialog_helper.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart';
import 'package:expense_tracker/features/category/presentation/pages/edit_category_view.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

const searchIconButtonKey = Key('selectCategoryScreen_search_iconButton');

class SelectCategoryProvider extends StatelessWidget {
  const SelectCategoryProvider({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CategoryCubit>(),
      child: child,
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
                    child: const EditCategoryScreen(),
                  ),
                );
              },
            );
          },
          label: Text(context.l10n.add_category),
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
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _CategoryList(
                    categories: categories.where((c) => c.isExpense),
                    onCategoryTap: GoRouter.of(context).pop,
                  ),
                  _CategoryList(
                    categories: categories.where((c) => c.isIncome),
                    onCategoryTap: GoRouter.of(context).pop,
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
    this.onCategoryTap,
  });

  final Iterable<CategoryEntity> categories;
  final ValueChanged<CategoryEntity>? onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        final currentCategory = categories.elementAt(index);

        // final onTap2 = () => GoRouter.of(context).pop(currentCategory);
        return Dismissible(
          direction: DismissDirection.endToStart,
          key: ValueKey(currentCategory),
          confirmDismiss: (direction) async {
            final confirmer = Completer<bool>();
            showAlertDialog(
              context,
              () => confirmer.complete(true),
              title: context.l10n.delete_confirmation_1,
              content: context.l10n.delete_confirmation_2,
              destructiveLabel: context.l10n.delete_confirmation_category(
                currentCategory.name,
              ),
              cancellationCallback: () => confirmer.complete(false),
            );
            return confirmer.future;
          },
          onDismissed: (direction) {
            context.read<CategoryCubit>().deleteCategory(currentCategory);
          },
          background: const ColoredBox(
            color: Colors.red,
            child: Icon(Icons.delete),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.only(bottom: 8),
            minVerticalPadding: 7,
            onTap: (onCategoryTap != null)
                ? () => onCategoryTap!(currentCategory)
                : null,
            leading: CircleAvatar(
              radius: 28,
              backgroundColor: currentCategory.backgroundColor,
              child: Icon(
                currentCategory.icon,
                color: currentCategory.color.withOpacity(1),
              ),
            ),
            title: Text(
              currentCategory.name,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        );
      },
      itemCount: categories.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, this.title});
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
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (_) {
                return BlocProvider.value(
                  value: context.read<CategoryCubit>(),
                  child: const EditCategoryScreen(),
                );
              },
            ),
          ),
          label: Text(context.l10n.add_category),
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
                physics: const NeverScrollableScrollPhysics(),
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
