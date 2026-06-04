import 'dart:io' show Platform;

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mhealthgoal/src/core/notifications/data/services/model_to_entity_mapper.dart';
import 'package:mhealthgoal/src/core/notifications/domain/notification_handlers.dart';

/// Helper to show notifications received while the app is in the foreground on Android.
///
/// Uses the `flutter_local_notifications` plugin
class AndroidForegroundNotificationsPresenter {
  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();
  final OnNotificationTapHandler _onForegroundNotificationTap;
  final String _channelId;

  AndroidForegroundNotificationsPresenter({
    required OnNotificationTapHandler onNotificationTap,
    required String channelId,
  }) : _onForegroundNotificationTap = onNotificationTap,
       _channelId = channelId;

  /// Must be called every time the app is launched.
  Future<void> init() async {
    if (!Platform.isAndroid) {
      return;
    }
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const settings = InitializationSettings(android: androidSettings);
    await _plugin.initialize(
      settings: settings,
      onDidReceiveNotificationResponse: _handleNotificationTap,
    );
  }

  void _handleNotificationTap(NotificationResponse response) {
    final notification = notificationResponseToEntity(
      notificationResponse: response,
      tappedTime: DateTime.now(),
    );
    _onForegroundNotificationTap(notification);
  }

  /// Delivers a notification on Android.
  Future<void> showNotification({
    required int id,
    required String title,
    required String body,
    required String payload,
  }) async {
    if (!Platform.isAndroid) {
      return;
    }
    await _plugin.show(
      id: id,
      title: title,
      body: body,
      notificationDetails: _notificationDetails,
      payload: payload,
    );
  }

  AndroidFlutterLocalNotificationsPlugin? get _androidPlugin {
    _throwExceptionUnsupported();
    final androidPlugin = _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    return androidPlugin;
  }

  /// Creates the notification channel used to deliver notifications on Android.
  ///
  /// Must be called once before the helper is used for the first time.
  Future<void> createChannel() async {
    if (!Platform.isAndroid) {
      return;
    }
    final channel = AndroidNotificationChannel(
      _channelId,
      _channelId,
      description: 'Channel for $_channelId notifications',
      importance: Importance.max,
    );

    await _androidPlugin?.createNotificationChannel(channel);
  }

  void _throwExceptionUnsupported() {
    if (!Platform.isAndroid) {
      throw Exception('Only Android is supported.');
    }
  }

  /// Configures the details for Android notifications and returns them.
  NotificationDetails get _notificationDetails {
    final androidNotificationDetails = AndroidNotificationDetails(
      _channelId,
      _channelId,
      channelDescription: 'Channel for $_channelId notifications',
      importance: Importance.max,
      priority: Priority.max,
    );
    final notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    return notificationDetails;
  }
}
