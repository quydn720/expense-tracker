import 'package:bloc/bloc.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/features/user/presentation/bloc/user_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required ITransactionRepository transactionRepository,
    required MyDatabase db,
    required UserService userService,
  })  : _transactionRepository = transactionRepository,
        _db = db,
        _userService = userService,
        super(const HomeState()) {
    on<HomeSubscriptionRequested>(_onSubscriptionRequested);
  }

  final ITransactionRepository _transactionRepository;
  final MyDatabase _db;
  final UserService _userService;

  Future<void> _onSubscriptionRequested(
    HomeSubscriptionRequested event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));

    final accountBalance = await _db.getAccountBalance();
    final userAvatarUrl = _userService.currentUser.photo;

    await emit.forEach<List<TransactionEntity>>(
      _transactionRepository.watchTransactions(),
      onData: (transactions) => state.copyWith(
        status: HomeStatus.success,
        transactions: transactions,
        accountBalance: accountBalance,
        userAvatarUrl: userAvatarUrl ?? '',
      ),
      onError: (_, __) => state.copyWith(status: HomeStatus.failure),
    );
  }
}
