import 'package:flutter/material.dart';

const _avatarSize = 42.0;

class Avatar extends StatelessWidget {
  const Avatar({super.key, this.photo, this.size = _avatarSize});

  final String? photo;
  final double size;

  @override
  Widget build(BuildContext context) {
    final photo = this.photo;
    return CircleAvatar(
      radius: size,
      backgroundImage: photo != null ? NetworkImage(photo) : null,
      child: photo == null ? Icon(Icons.person_outline, size: size + 4) : null,
    );
  }
}
