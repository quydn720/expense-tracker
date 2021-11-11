import 'package:expense_tracker/app/app.dart';
import 'package:expense_tracker/blocs/tab/tab_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/daily_page';
  const HomePage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    final user = context.select(
      (AppBloc bloc) {
        if (bloc.state is Authenticated) {
          return (bloc.state as Authenticated).user;
        }
      },
    );
    return BlocBuilder<TabBloc, AppTab>(
      builder: (context, currentTab) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AppBar(
              title: const Text('Home'),
              actions: <Widget>[
                IconButton(
                  key: const Key('homePage_logout_iconButton'),
                  icon: const Icon(Icons.exit_to_app),
                  onPressed: () =>
                      context.read<AppBloc>().add(const AppLogOutRequested()),
                )
              ],
            ),
            const SizedBox(height: 4),
            Avatar(photo: user?.photo),
            const SizedBox(height: 4),
            Text(user?.email ?? ''),
            const SizedBox(height: 4),
            Text(user?.name ?? ''),
          ],
        );
      },
    );
  }
}
