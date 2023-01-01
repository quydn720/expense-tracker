import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/features/user/presentation/bloc/user_bloc.dart';
import 'package:expense_tracker/features/wallet/data/datasources/wallet_dao.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/transformers.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required ITransactionRepository transactionRepository,
    required WalletsDao db,
    required UserService userService,
  })  : _transactionRepository = transactionRepository,
        _walletsDao = db,
        _userService = userService,
        super(const HomeState()) {
    on<HomeSubscriptionRequested>(_onSubscriptionRequested);
  }

  final ITransactionRepository _transactionRepository;
  final WalletsDao _walletsDao;
  final UserService _userService;

  Future<void> _onSubscriptionRequested(
    HomeSubscriptionRequested event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));

    final userAvatarUrl = _userService.currentUser.photo;
    final transactionStream = _transactionRepository.watchTransactions();
    final balanceStream = _walletsDao.getAccountBalance();

    final stream = CombineLatestStream.combine2(
      transactionStream,
      balanceStream,
      (trans, balance) => {'trans': trans, 'balance': balance},
    );

    await emit.forEach<Map<String, dynamic>>(
      stream,
      onData: (transactions) {
        return state.copyWith(
          transactions: transactions['trans'] as List<TransactionEntity>,
          accountBalance: transactions['balance'] as double,
          userAvatarUrl: userAvatarUrl ?? '',
          status: HomeStatus.success,
        );
      },
      onError: (_, __) => state.copyWith(status: HomeStatus.failure),
    );
  }

  @override
  Future<void> close() {
    print('close');
    return super.close();
  }
}
