import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../cubit/edit_transaction_cubit.dart';

class MediaBottomSheet extends StatelessWidget {
  const MediaBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditTransactionCubit>();

    return Column(
      children: [
        const SizedBox(height: 12),
        const Divider(thickness: 2),
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
                    final navigator = Navigator.of(context);
                    final _picker = ImagePicker();
                    final something =
                        await _picker.pickImage(source: ImageSource.camera);
                    if (something != null) {
                      navigator.pop();
                      controller.attachmentSelectionPressed();
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
                    final navigator = Navigator.of(context);
                    final _picker = ImagePicker();
                    final something =
                        await _picker.pickImage(source: ImageSource.gallery);

                    if (something != null) {
                      navigator.pop();
                      controller.attachmentSelectionDone(something);
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
