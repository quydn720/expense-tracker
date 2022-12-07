// ignore_for_file: lines_longer_than_80_chars

import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/bloc/edit_transaction_bloc.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mocktail/mocktail.dart';

import '../../domain/usecases/add_transaction_use_case_test.dart';

class MockAddTransactionUseCase extends Mock implements AddTransactionUseCase {}

void main() {
  late AddTransactionUseCase _addTransactionUseCase;

  group(
    'EditTransactionAmountChanged',
    () {
      blocTest<EditTransactionBloc, EditTransactionState>(
        'emits [EditTransactionState] when EditTransactionAmountChanged is added.',
        setUp: () {
          registerFallbackValue(MockTransaction());
          _addTransactionUseCase = MockAddTransactionUseCase();
          when(() =>
                  _addTransactionUseCase(any(that: isA<TransactionEntity>())))
              .thenAnswer((_) async {});
        },
        build: () => EditTransactionBloc(_addTransactionUseCase),
        act: (bloc) => bloc.add(const EditTransactionAmountChanged('5')),
        expect: () => [
          EditTransactionState(
            amount: const AmountText.dirty(5),
            date: DateTime(2022),
          )
        ],
      );
    },
  );

  blocTest<EditTransactionBloc, EditTransactionState>(
    'emits [EditTransactionState] when EditTransactionRepeatToggled is added.',
    setUp: () {
      registerFallbackValue(MockTransaction());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<TransactionEntity>())))
          .thenAnswer((_) async {});
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(const EditTransactionRepeatToggled()),
    seed: () => EditTransactionState(isRepeated: true, date: DateTime(2022)),
    verify: (bloc) => expect(bloc.state.isRepeated, isFalse),
  );
  blocTest<EditTransactionBloc, EditTransactionState>(
    '''
    emits [EditTransactionState]
    when EditTransactionDescriptionChanged is added.''',
    setUp: () {
      registerFallbackValue(MockTransaction());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<TransactionEntity>())))
          .thenAnswer((_) async {});
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(
      const EditTransactionDescriptionChanged('description'),
    ),
    expect: () => [const EditTransactionState(description: 'description')],
  );
  blocTest<EditTransactionBloc, EditTransactionState>(
    '''
    emits [EditTransactionState]
    when EditTransactionCategoryChanged is added.''',
    setUp: () {
      registerFallbackValue(MockTransaction());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<TransactionEntity>())))
          .thenAnswer((_) async {});
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(EditTransactionCategoryChanged(Category.empty())),
    expect: () => [const EditTransactionState(category: CategoryField.pure())],
  );
  blocTest<EditTransactionBloc, EditTransactionState>(
    '''
    emits [EditTransactionState]
    when EditTransactionSelectAttachment is added.''',
    setUp: () {
      registerFallbackValue(MockTransaction());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<TransactionEntity>())))
          .thenAnswer((_) async {});
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(const EditTransactionSelectAttachment()),
    expect: () => [const EditTransactionState(status: Status.selectImage)],
  );
  blocTest<EditTransactionBloc, EditTransactionState>(
    '''
    emits [EditTransactionState]
    when EditTransactionSelectAttachmentClose is added.''',
    setUp: () {
      registerFallbackValue(MockTransaction());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<TransactionEntity>())))
          .thenAnswer((_) async {});
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(const EditTransactionSelectAttachmentClose()),
    expect: () => [const EditTransactionState(status: Status.initital)],
  );

  late XFile mockXFile;

  blocTest<EditTransactionBloc, EditTransactionState>(
    '''
    emits [EditTransactionState]
    when EditTransactionImageChosen is added.''',
    setUp: () {
      registerFallbackValue(MockTransaction());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<TransactionEntity>())))
          .thenAnswer((_) async {});

      mockXFile = MockXFile();
      when(() => mockXFile.path).thenReturn('mock path');
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(EditTransactionImageChosen(mockXFile)),
    expect: () => [EditTransactionState(imgFile: mockXFile)],
  );
  blocTest<EditTransactionBloc, EditTransactionState>(
    '''
    emits [EditTransactionState]
    when EditTransactionSubmitNewTransaction is added.''',
    setUp: () {
      registerFallbackValue(MockTransaction());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<TransactionEntity>())))
          .thenAnswer((_) async {});
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(const EditTransactionSubmitNewTransaction()),
    expect: () => [
      const EditTransactionState(status: Status.loading),
      const EditTransactionState(status: Status.success),
    ],
  );
  blocTest<EditTransactionBloc, EditTransactionState>(
    '''
    emits [EditTransactionState]
    when EditTransactionDeleteTransaction is added.''',
    setUp: () {
      registerFallbackValue(MockTransaction());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<TransactionEntity>())))
          .thenAnswer((_) async {});
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(const EditTransactionDeleteTransaction()),
    expect: () => <EditTransactionState>[],
  );

  test('emits [EditTransactionState]', () {
    final bloc = EditTransactionBloc(
      _addTransactionUseCase,
      initialTransaction: MockTransaction().copyWith(
        amount: 99,
        description: 'Mock Description',
      ),
    );
    expect(bloc.state.isNewTransaction, isFalse);
  });
}

class MockXFile extends Mock implements XFile {}
