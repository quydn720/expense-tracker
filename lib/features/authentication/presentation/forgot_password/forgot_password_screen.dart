import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../presentations/components/default_app_bar.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key, this.email});
  final String? email;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgotPasswordCubit>(
      create: (_) => ForgotPasswordCubit(
        getIt<ForgotPasswordUseCase>(),
        initialEmail: email,
      ),
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

    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          context.go('/success');
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
                autocorrect: false,
                onChanged: controller.onEmailChanged,
                decoration: InputDecoration(
                  errorText:
                      context.watch<ForgotPasswordCubit>().state.failure?.map(
                            (_) => context.l10n.authError_unknownException,
                            invalidEmail: (_) =>
                                context.l10n.authError_invalidEmail,
                            userNotFound: (_) =>
                                context.l10n.authError_userNotFound,
                          ),
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

class ForgotPasswordSendingEmailSuccess extends StatelessWidget {
  const ForgotPasswordSendingEmailSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textStyle = textTheme.headline2?.copyWith(
      color: Theme.of(context).colorScheme.onBackground,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/send_email.png'),
            const SizedBox(height: 18),
            Text(
              'Your email is on the way',
              style: textStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              'Check your email test@test.com and follow the instructions to reset your password',
              style: textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  context.go('/login');
                },
                child: const Text('Back to Login'),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
