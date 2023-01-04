import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/wallet/domain/entities/wallet.dart';
import 'package:expense_tracker/features/wallet/presentation/cubit/edit_wallet_cubit.dart';
import 'package:expense_tracker/features/wallet/presentation/cubit/wallet_cubit.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

const searchIconButtonKey = Key('SelectWalletScreen_search_iconButton');

class SelectWalletProvider extends StatelessWidget {
  const SelectWalletProvider({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<WalletCubit>(),
      child: SelectWalletView(title: title),
    );
  }
}

class SelectWalletView extends StatelessWidget {
  const SelectWalletView({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    final wallets = context.watch<WalletCubit>().state.wallets;

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        onPressed: () async {
          await showModalBottomSheet<void>(
            isScrollControlled: true,
            isDismissible: false,
            enableDrag: false,
            context: context,
            builder: (_) {
              return FractionallySizedBox(
                heightFactor: 0.9,
                child: BlocProvider.value(
                  value: context.read<WalletCubit>(),
                  child: const EditWalletScreen(),
                ),
              );
            },
          );
        },
        label: Text(context.l10n.add_wallet),
        icon: const Icon(FontAwesomeIcons.plus),
      ),
      appBar: DefaultAppBar(title: context.l10n.wallet),
      body: _WalletList(wallets: wallets),
    );
  }
}

class _WalletList extends StatelessWidget {
  const _WalletList({
    required this.wallets,
  });

  final Iterable<Wallet> wallets;
  // final VoidCallback onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      itemBuilder: (context, index) {
        final colorScheme = Theme.of(context).colorScheme;
        return ListTile(
          contentPadding: const EdgeInsets.only(bottom: 8),
          minVerticalPadding: 7,
          onTap: () => GoRouter.of(context).pop(wallets.elementAt(index)),
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: colorScheme.primary.withOpacity(0.2),
            child: Icon(FontAwesomeIcons.wallet, color: colorScheme.primary),
          ),
          title: Text(
            wallets.elementAt(index).name,
            style: Theme.of(context).textTheme.headline6,
          ),
        );
      },
      itemCount: wallets.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

class EditWalletScreen extends StatelessWidget {
  const EditWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final primaryColor = Theme.of(context).primaryColor;

    return BlocProvider(
      create: (context) => EditWalletCubit(
        addNewWallet: AddNewWallet(context.read<MyDatabase>()),
      ),
      child: Builder(
        builder: (context) {
          final controller = context.read<EditWalletCubit>();

          return BlocListener<EditWalletCubit, EditWalletState>(
            listenWhen: (p, c) =>
                p.status != c.status && c.status == EditWalletStatus.success,
            listener: (context, state) {
              context.pop();
            },
            child: Scaffold(
              backgroundColor: primaryColor,
              appBar: DefaultAppBar(
                title: l10n.create_new_wallet,
                color: primaryColor,
                textColor: Colors.white,
              ),
              body: Column(
                children: [
                  const Spacer(),
                  const _WalletAmountField(),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      color: Theme.of(context).canvasColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        const _WalletNameField(),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: controller.submit,
                          child: Text(l10n.continue_str),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _WalletAmountField extends StatelessWidget {
  const _WalletAmountField();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final l10n = context.l10n;

    final controller = context.read<EditWalletCubit>();

    final appState = context.read<AppBloc>().state;
    final numberFormat = appState.numberFormatter;
    final amount = numberFormat.format(controller.state.amount);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            l10n.how_much,
            style: textTheme.button?.copyWith(
              color: colorScheme.background,
            ),
          ),
          TextFormField(
            initialValue: amount,
            decoration: InputDecoration(
              border: InputBorder.none,
              errorStyle: textTheme.bodyText2?.copyWith(
                color: colorScheme.onError,
              ),
            ),
            style: textTheme.headline1?.copyWith(color: colorScheme.background),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            textInputAction: TextInputAction.next,
            onChanged: (amountStr) {
              controller.changeAmount(
                amountStr: amountStr,
                currencySymbol: numberFormat.currencySymbol,
              );
            },
            cursorColor: colorScheme.background,
          ),
        ],
      ),
    );
  }
}

class _WalletNameField extends StatelessWidget {
  const _WalletNameField();

  @override
  Widget build(BuildContext context) {
    final controller = context.read<EditWalletCubit>();
    final name = controller.state.name;

    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 24,
        ),
        hintText: context.l10n.name,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        filled: true,
      ),
      initialValue: name,
      onChanged: controller.changeName,
    );
  }
}
