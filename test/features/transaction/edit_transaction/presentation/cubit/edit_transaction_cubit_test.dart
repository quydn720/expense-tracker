import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

class MockAddTransactionUseCase extends Mock implements AddTransactionUseCase {}

void main() {
  late AddTransactionUseCase _addTransaction;
  late EditTransactionState state;
  group('EditTransactionCubit', () {
    setUp(() {
      _addTransaction = MockAddTransactionUseCase();
      state = EditTransactionState(date: DateTime(2022));
    });

    blocTest<EditTransactionCubit, EditTransactionState>(
      'emits Status.selectImage when attactment selection pressed',
      build: () => EditTransactionCubit(_addTransaction),
      act: (bloc) => bloc.attachmentSelectionPressed(),
      seed: () => state,
      expect: () => [state.copyWith(status: Status.selectImage)],
    );
    blocTest<EditTransactionCubit, EditTransactionState>(
      'emits amount when amount field changed',
      build: () => EditTransactionCubit(_addTransaction),
      act: (bloc) => bloc.amountChanged('5.0'),
      seed: () => state,
      expect: () => [
        state.copyWith(
          amount: const AmountText.dirty(5),
          formzStatus: FormzStatus.invalid,
        )
      ],
    );
    blocTest<EditTransactionCubit, EditTransactionState>(
      'emits description when description field changed',
      build: () => EditTransactionCubit(_addTransaction),
      act: (bloc) => bloc.descriptionChanged('some notes'),
      seed: () => state,
      expect: () => [state.copyWith(description: 'some notes')],
    );
    blocTest<EditTransactionCubit, EditTransactionState>(
      'emits reversed state when the repeat button toggled',
      build: () => EditTransactionCubit(_addTransaction),
      act: (bloc) => bloc.repeatedButtonToggled(),
      seed: () => state,
      expect: () => [state.copyWith(isRepeated: true)],
    );
  });
}
