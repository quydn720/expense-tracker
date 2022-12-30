import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_budget_state.dart';
part 'edit_budget_cubit.freezed.dart';

class EditBudgetCubit extends Cubit<EditBudgetState> {
  EditBudgetCubit() : super(EditBudgetState.initial());
}
