import 'package:expense_tracker/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCircleAvatar extends StatelessWidget {
  const UserCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final userAvatarUrl = context.watch<HomeBloc>().state.userAvatarUrl;

    return CircleAvatar(
      backgroundImage:
          userAvatarUrl.isNotEmpty ? NetworkImage(userAvatarUrl) : null,
      child: userAvatarUrl.isEmpty ? const Icon(Icons.person) : null,
    );
  }
}
