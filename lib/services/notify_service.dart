import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notification {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    AndroidInitializationSettings InitializationSettingsAndroid =
        AndroidInitializationSettings('logo.png');

    var initializationSettingsIOS = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
        onDidReceiveLocalNotification:
            ((int id, String? title, String? body, String? payload) async {}));
    var initializationSettings = InitializationSettings(
        android: InitializationSettingsAndroid, iOS: initializationSettingsIOS);

    await notificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) async {});
  }

  Future showNotification(
      {int id = 0, String? title, String? body, String? payload}) async {
    return notificationsPlugin.show(
        id, title, body, await notificationDetails());
  }
}

notificationDetails() {
  return const NotificationDetails(
    android: AndroidNotificationDetails('channelId', 'channelName',
    importance: Importance.max
    ),
    iOS: DarwinNotificationDetails()
  );
}
