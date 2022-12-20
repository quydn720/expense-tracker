import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/l10n/gen/app_localizations.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key, this.email});
  final String? email;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgotPasswordCubit>(
      create: (_) => ForgotPasswordCubit(getIt(), initialEmail: email),
      child: const ForgotPasswordView(),
    );
  }
}

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2?.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
        );
    final controller = context.read<ForgotPasswordCubit>();
    final l10n = context.l10n;

    final errorText = context.watch<ForgotPasswordCubit>().state.failure;
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          context.go('/success', extra: controller.state.email);
        }
      },
      child: Scaffold(
        appBar: DefaultAppBar(title: l10n.forgot_password),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text(l10n.forgot_password_title, style: textStyle),
              Text(l10n.forgot_password_instruction, style: textStyle),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: controller.state.email,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                onChanged: controller.onEmailChanged,
                decoration: InputDecoration(
                  errorText: errorText?.toLocalizedString(l10n),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: controller.submit,
                child: Text(l10n.continue_str),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

extension ForgotPasswordFailureStr on ForgotPasswordFailure {
  String? toLocalizedString(AppLocalizations l10n) {
    return map(
      invalidEmail: (_) => l10n.authError_invalidEmail,
      userNotFound: (_) => l10n.authError_userNotFound,
      (_) => l10n.authError_unknownException,
    );
  }
}
