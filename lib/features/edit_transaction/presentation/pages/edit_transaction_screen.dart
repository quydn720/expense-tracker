import 'dart:io';

import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../bloc/edit_transaction_bloc.dart';

class EditTransactionScreen extends StatelessWidget {
  const EditTransactionScreen({super.key, this.inititalTransaction});
  final Transaction? inititalTransaction;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditTransactionBloc(
        getIt(),
        initialTransaction: inititalTransaction,
      ),
      child: const _EditTransaction(),
    );
  }
}

class _EditTransaction extends StatefulWidget {
  const _EditTransaction();

  @override
  State<_EditTransaction> createState() => _EditTransactionState();
}

class _EditTransactionState extends State<_EditTransaction> {
  late String? imgStr;
  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditTransactionBloc>();
    // final isNewTransaction = context.select(
    //   (EditTransactionBloc value) => value.state.isNewTransaction,
    // );
    final l10n = context.l10n;

    return Scaffold(
      appBar: DefaultAppBar(title: l10n.expense),
      body: BlocListener<EditTransactionBloc, EditTransactionState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (_, state) async {
          if (state.status == Status.success) {
            final navigator = Navigator.of(context);
            await showDialog<void>(
              context: _,
              builder: (_) {
                return const Center(
                  child: Text('Transaction has been successfully added'),
                );
              },
            );
            navigator.pop();
          } else if (state.status == Status.selectImage) {
            await showModalBottomSheet<String>(
              isScrollControlled: true,
              context: context,
              useRootNavigator: true,
              builder: (_) => BlocProvider.value(
                value: context.read<EditTransactionBloc>(),
                child: Wrap(children: const [MediaBottomSheet()]),
              ),
            );
          }
        },
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(l10n.how_much),
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: context.l10n.budgetDescription,
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      controller.add(EditTransactionAmountChanged(value));
                    },
                  ),
                ],
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: context.l10n.budgetDescription,
                        ),
                        maxLines: 4,
                        onChanged: (value) {
                          controller
                              .add(EditTransactionDescriptionChanged(value));
                        },
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () => controller.add(
                          EditTransactionSelectAttachment(),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xff91919F),
                          shape: const StadiumBorder(
                            side: BorderSide(color: Color(0xffF1F1FA)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Assets.icons.attachmentSvg.svg(
                              color: const Color(0xff91919F),
                            ),
                            Text(l10n.add_attactment),
                          ],
                        ),
                      ),

                      if (context.watch<EditTransactionBloc>().state.imgFile !=
                          null) ...[
                        Row(
                          children: [
                            Stack(
                              children: [
                                Image.file(
                                  File(
                                    context
                                        .read<EditTransactionBloc>()
                                        .state
                                        .imgFile!
                                        .path,
                                  ),
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                const Positioned(
                                  right: 0,
                                  child: Icon(Icons.crop_square_sharp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                      SwitchListTile.adaptive(
                        value: context.select<EditTransactionBloc, bool>(
                          (value) => value.state.isRepeated,
                        ),
                        onChanged: (_) =>
                            controller.add(EditTransactionRepeatToggle()),
                        title: Text(l10n.repeat_str),
                        subtitle: Text(l10n.repeat_transaction),
                        contentPadding: EdgeInsets.zero,
                      ),
                      // Image(image: image),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () => controller.add(SubmitNewTransaction()),
                        child: Text(context.l10n.continue_str),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MediaBottomSheet extends StatelessWidget {
  const MediaBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditTransactionBloc>();
    return Column(
      children: [
        const SizedBox(height: 56, child: Center(child: Divider(thickness: 2))),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () async {
                    final _picker = ImagePicker();
                    final something =
                        await _picker.pickImage(source: ImageSource.camera);
                    if (something != null) {}
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          Assets.icons.cameraSvg.svg(
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Camera',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                    ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: InkWell(
                  onTap: () async {
                    final _picker = ImagePicker();
                    final something =
                        await _picker.pickImage(source: ImageSource.gallery);
                    if (something != null) {
                      controller.add(EditTransactionImageChosen(something));
                    }
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          Assets.icons.gallerySvg.svg(
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Image',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                    ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: InkWell(
                  onTap: () async {
                    final result = await FilePicker.platform.pickFiles();

                    if (result != null) {
                      // final file = File(result.files.single.path!);
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          Assets.icons.file.svg(
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Document',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                    ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}
