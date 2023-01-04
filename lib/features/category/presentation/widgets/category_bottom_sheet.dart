import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class AddCategoryBottomSheet extends StatelessWidget {
//   const AddCategoryBottomSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final errorText =
//         context.watch<CategoryCubit>().state.addCategoryErrorMessage;

//     return Column(
//       children: [
//         TextField(decoration: InputDecoration(errorText: errorText)),
//         TextButton(
//           onPressed: context.read<CategoryCubit>().addNewCategory,
//           child: const Text('Add'),
//         )
//       ],
//     );
//   }
// }
