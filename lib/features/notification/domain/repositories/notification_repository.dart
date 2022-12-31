import 'package:dartz/dartz.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:timezone/timezone.dart';

typedef InitialNotification = Future<Either<Exception, Unit>> Function();

abstract class LocalNotificationsDataSource {
  Future<void> scheduleNotification({
    required int id,
    required DateTime dateTime,
    String? title,
    String? amount,
  });

  Future<void> initializeNotification();

  void cancelNotification(int id);

  void cancelAllNotifications();
}

@Singleton(as: LocalNotificationsDataSource)
class LocalNotificationsDataSourceImpl implements LocalNotificationsDataSource {
  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  late AndroidInitializationSettings _androidInitializationSettings;
  late DarwinInitializationSettings _darwinInitializationSettings;
  late InitializationSettings _initializationSettings;

  @override
  void cancelAllNotifications() {
    _flutterLocalNotificationsPlugin.cancelAll();
  }

  @override
  void cancelNotification(int id) {
    _flutterLocalNotificationsPlugin.cancel(id);
  }

  @override
  Future<void> initializeNotification() async {
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    _androidInitializationSettings = const AndroidInitializationSettings(
      'transparent_logo',
    );

    _darwinInitializationSettings = const DarwinInitializationSettings(
      onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
    );

    _initializationSettings = InitializationSettings(
      android: _androidInitializationSettings,
      iOS: _darwinInitializationSettings,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      _initializationSettings,
    );
  }

  @override
  Future<void> scheduleNotification({
    required int id,
    required DateTime dateTime,
    String? title,
    String? amount,
  }) async {
    const androidNotificationDetails = AndroidNotificationDetails(
      'channelId',
      'channelName',
      importance: Importance.max,
      priority: Priority.high,
    );

    const notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    final body = "Take $amount. You shouldn't miss it";

    await _flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      TZDateTime.from(
        dateTime,
        getLocation(timeZoneDatabase.locations.keys.first),
      ),
      matchDateTimeComponents: DateTimeComponents.time,
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  static void _onDidReceiveLocalNotification(
    int id,
    String? title,
    String? body,
    String? payload,
  ) {
    logger.i('id $id');
  }
}
