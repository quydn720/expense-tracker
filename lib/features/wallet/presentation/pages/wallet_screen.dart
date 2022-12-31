import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/presentation/widgets/transaction_tile.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:expense_tracker/features/wallet/presentation/cubit/wallet_cubit.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WalletScreenProvider extends StatelessWidget {
  const WalletScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<WalletCubit>(),
      child: const WalletScreen(),
    );
  }
}

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WalletCubit>().state;
    final textTheme = Theme.of(context).textTheme;

    final formatter = context.read<AppBloc>().state.numberFormatter;

    return Scaffold(
      appBar: const DefaultAppBar(title: 'Account'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Text(
                    context.l10n.account_balance,
                    style: textTheme.subtitle2,
                  ),
                  Text(
                    formatter.format(state.totalAmount),
                    style: textTheme.headline3,
                  ),
                ],
              ),
              Assets.images.bg.image(fit: BoxFit.fill),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.separated(
                separatorBuilder: (_, __) => const Divider(height: 16),
                itemCount: state.wallets.length,
                shrinkWrap: true,
                itemBuilder: (_, index) => GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        // DecoratedBox(
                        //   decoration: BoxDecoration(
                        //     color: const Color(0xffF1F1FA),
                        //     borderRadius: BorderRadius.circular(16),
                        //   ),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(12),
                        //     child: Image.asset(state.wallets[index].iconPath),
                        //   ),
                        // ),
                        const SizedBox(width: 16),
                        Text(
                          state.wallets[index].name,
                          style: textTheme.headline6,
                        ),
                        const Spacer(),
                        Text(
                          formatter.format(state.wallets[index].balance),
                          style: textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (_) => BlocProvider.value(
                        value: context.read<WalletCubit>(),
                        child: WalletDetail(
                          wallet: state.wallets[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () => context.go('/add-new-wallet'),
              child: const Text('+ Add new wallet'),
            ),
          ),
          const SizedBox(height: 48),
        ],
      ),
    );
  }
}

class WalletDetail extends StatelessWidget {
  const WalletDetail({super.key, required this.wallet});
  final Wallet wallet;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final formatter = context.read<AppBloc>().state.numberFormatter;

    return Scaffold(
      appBar: const DefaultAppBar(title: 'Detail account'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12),
                        // child: Image.asset(wallet.iconPath),
                        child: Icon(Icons.abc_outlined, size: 32),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      wallet.name,
                      style: textTheme.headline2?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      formatter.format(wallet.balance),
                      style: textTheme.headline3?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text('Transactions', style: textTheme.headline6),
            const SizedBox(height: 12),
            Expanded(
              child: FutureBuilder<List<TransactionEntity>>(
                future: getIt<MyDatabase>()
                    .getAllTransactionWithWalletId(wallet.id),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator.adaptive();
                  }
                  return ListView(
                    shrinkWrap: true,
                    children: snapshot.data!
                        .map((e) => TransactionTile(transaction: e))
                        .toList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
