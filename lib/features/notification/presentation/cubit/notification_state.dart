part of 'notification_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default([]) List<Notification> notifications,
  }) = _NotificationState;
}

class Notification {
  const Notification({
    required this.title,
    required this.subtitle,
    required this.dateTime,
  });

  final String title;
  final String subtitle;
  final DateTime dateTime;
}
