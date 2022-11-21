import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../di/injector.dart';
import '../../../../../presentations/components/default_app_bar.dart';
import '../cubit/login_form_cubit.dart';
import 'login_screen.dart';

class LoginProvider extends StatelessWidget {
  const LoginProvider({super.key});
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.login),
      body: BlocProvider(
        create: (_) => getIt<LoginFormCubit>(),
        child: const LoginScreen(),
      ),
    );
  }
}
