import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.dart';
part 'notification_cubit.freezed.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit()
      : super(
          NotificationState(
            notifications: [
              Notification(
                title: 'title',
                subtitle: 'subtitile',
                dateTime: DateTime.now(),
              )
            ],
          ),
        );
}
