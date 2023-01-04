import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart';
import 'package:expense_tracker/features/category/presentation/cubit/edit_category_cubit.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';
import 'package:go_router/go_router.dart';

class EditCategoryScreen extends StatelessWidget {
  const EditCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final primaryColor = Theme.of(context).primaryColor;

    return BlocProvider(
      create: (context) => EditCategoryCubit(
        AddCategoryUseCase(repo: context.read<ICategoryRepository>()),
      ),
      child: Builder(
        builder: (context) {
          final controller = context.read<EditCategoryCubit>();
          context.read<ICategoryRepository>();
          return BlocListener<EditCategoryCubit, EditCategoryState>(
            listenWhen: (p, c) =>
                p.status != c.status && c.status == EditCategoryStatus.success,
            listener: (context, state) {
              context.pop();
            },
            child: Scaffold(
              backgroundColor: primaryColor,
              appBar: DefaultAppBar(
                title: l10n.create_new_category,
                color: primaryColor,
                textColor: Colors.white,
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Row(
                          children: const [
                            _IconField(),
                            SizedBox(width: 8),
                            Expanded(child: _WalletNameField()),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const _CategoryTypeField(),
                        const SizedBox(height: 16),
                        const _ColorField(),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: controller.submit,
                          child: Text(l10n.continue_str),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _WalletNameField extends StatelessWidget {
  const _WalletNameField();

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditCategoryCubit>();
    final name = controller.state.name;

    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 24,
        ),
        hintText: context.l10n.name,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        filled: true,
      ),
      initialValue: name,
      onChanged: controller.changeName,
    );
  }
}

class _CategoryTypeField extends StatelessWidget {
  const _CategoryTypeField();

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditCategoryCubit>();

    return BlocSelector<EditCategoryCubit, EditCategoryState, CategoryType>(
      selector: (state) => state.categoryType,
      builder: (context, selected) {
        return Row(
          children: [
            Expanded(
              child: RadioListTile<CategoryType>(
                title: Text(context.l10n.expense),
                value: CategoryType.expense,
                groupValue: selected,
                onChanged: controller.changeCategoryType,
              ),
            ),
            Expanded(
              child: RadioListTile<CategoryType>(
                title: Text(context.l10n.income),
                value: CategoryType.income,
                groupValue: selected,
                onChanged: controller.changeCategoryType,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ColorField extends StatelessWidget {
  const _ColorField();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<EditCategoryCubit, EditCategoryState, Color>(
      selector: (state) => state.color,
      builder: (context, color) {
        return Row(
          children: [
            Text(context.l10n.color),
            Expanded(
              child: GestureDetector(
                onTap: () async {
                  final controller = context.read<EditCategoryCubit>();
                  final selectedColor = await showColorPickerDialog(
                    context,
                    color,
                    heading: Text(context.l10n.select_color),
                    pickersEnabled: const <ColorPickerType, bool>{
                      ColorPickerType.primary: true,
                      ColorPickerType.accent: true,
                      ColorPickerType.custom: true,
                      ColorPickerType.wheel: true,
                    },
                  );
                  controller.changeColor(selectedColor);
                },
                child: Container(
                  height: 24,
                  margin: const EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: color,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _IconField extends StatelessWidget {
  const _IconField();

  @override
  Widget build(BuildContext context) {
    final icon =
        context.select<EditCategoryCubit, IconData>((b) => b.state.iconData);
    final color =
        context.select<EditCategoryCubit, Color>((b) => b.state.color);

    return GestureDetector(
      onTap: () async {
        final controller = context.read<EditCategoryCubit>();
        final icon = await FlutterIconPicker.showIconPicker(context);
        if (icon != null) {
          controller.changeIcon(icon);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: color),
      ),
    );
  }
}
