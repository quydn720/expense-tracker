// ignore_for_file: lines_longer_than_80_chars

import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/features/edit_transaction/domain/usecases/add_transaction_use_case.dart';
import 'package:expense_tracker/features/edit_transaction/presentation/bloc/edit_transaction_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transaction_repository/transaction_repository.dart';

class MockAddTransactionUseCase extends Mock implements AddTransactionUseCase {}

void main() {
  late AddTransactionUseCase _addTransactionUseCase;

  group(
    'EditTransactionAmountChanged',
    () {
      blocTest<EditTransactionBloc, EditTransactionState>(
        'emits [EditTransactionState] when EditTransactionAmountChanged is added.',
        setUp: () {
          registerFallbackValue(Transaction.empty());
          _addTransactionUseCase = MockAddTransactionUseCase();
          when(() => _addTransactionUseCase(any(that: isA<Transaction>())))
              .thenAnswer((_) async {});
        },
        build: () => EditTransactionBloc(_addTransactionUseCase),
        act: (bloc) => bloc.add(const EditTransactionAmountChanged('5')),
        expect: () => [const EditTransactionState(amount: 5)],
      );
    },
  );

  blocTest<EditTransactionBloc, EditTransactionState>(
    'emits [EditTransactionState] when EditTransactionRepeatToggled is added.',
    setUp: () {
      registerFallbackValue(Transaction.empty());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<Transaction>())))
          .thenAnswer((_) async {});
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(const EditTransactionRepeatToggled()),
    seed: () => const EditTransactionState(isRepeated: true),
    verify: (bloc) => expect(bloc.state.isRepeated, isFalse),
  );
  blocTest<EditTransactionBloc, EditTransactionState>(
    '''
    emits [EditTransactionState]
    when EditTransactionDescriptionChanged is added.''',
    setUp: () {
      registerFallbackValue(Transaction.empty());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<Transaction>())))
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
      registerFallbackValue(Transaction.empty());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<Transaction>())))
          .thenAnswer((_) async {});
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(EditTransactionCategoryChanged(Category.empty())),
    expect: () => [EditTransactionState(category: Category.empty())],
  );
  blocTest<EditTransactionBloc, EditTransactionState>(
    '''
    emits [EditTransactionState]
    when EditTransactionSelectAttachment is added.''',
    setUp: () {
      registerFallbackValue(Transaction.empty());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<Transaction>())))
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
      registerFallbackValue(Transaction.empty());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<Transaction>())))
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
      registerFallbackValue(Transaction.empty());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<Transaction>())))
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
      registerFallbackValue(Transaction.empty());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<Transaction>())))
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
      registerFallbackValue(Transaction.empty());
      _addTransactionUseCase = MockAddTransactionUseCase();
      when(() => _addTransactionUseCase(any(that: isA<Transaction>())))
          .thenAnswer((_) async {});
    },
    build: () => EditTransactionBloc(_addTransactionUseCase),
    act: (bloc) => bloc.add(const EditTransactionDeleteTransaction()),
    expect: () => <EditTransactionState>[],
  );

  test('emits [EditTransactionState]', () {
    final bloc = EditTransactionBloc(
      _addTransactionUseCase,
      initialTransaction: Transaction.empty().copyWith(
        amount: 99,
        description: 'Mock Description',
      ),
    );
    expect(bloc.state.isNewTransaction, isFalse);
  });
}

class MockXFile extends Mock implements XFile {}
