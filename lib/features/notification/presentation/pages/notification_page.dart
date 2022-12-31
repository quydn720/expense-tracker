import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/notification/presentation/cubit/notification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NotificationCubit(),
      child: const NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications =
        context.watch<NotificationCubit>().state.notifications;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Notification',
        trailings: [
          PopupMenuButton<int>(
            itemBuilder: (_) => [
              const PopupMenuItem(value: 1, child: Text('Mark all read')),
              const PopupMenuItem(value: 1, child: Text('Remove all')),
            ],
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (_, index) {
              final noti = notifications[index];
              return ListTile(
                title: Text(noti.title, style: textTheme.bodyText2),
                subtitle: Text(
                  noti.subtitle,
                  style: textTheme.subtitle2?.copyWith(color: Colors.grey),
                ),
                trailing: Text(
                  noti.dateTime.toString(),
                  style: textTheme.subtitle2?.copyWith(color: Colors.grey),
                ),
              );
            },
            itemCount: notifications.length,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
