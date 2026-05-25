import 'dart:convert';
import 'dart:io' show Platform;

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mhealthgoal/src/core/notifications/data/services/android_foreground_notifications_presenter.dart';
import 'package:mhealthgoal/src/core/notifications/data/services/fcm_client.dart';
import 'package:mhealthgoal/src/core/notifications/domain/notification_handler_definitions.dart';

/// Simplified interface to Firebase Cloud Messaging (FCM) services.
///
/// Configures, initializes, and delivers notifications on all app
/// states (foreground, background and terminated).
///
/// Also exposes information related to the notifications, like
/// device token and whether they are enabled on the device.
///
/// Requires setting up FCM on your project. Follow the instructions in the
/// official documentation:
/// https://firebase.flutter.dev/docs/messaging/overview
///
/// [FcmNotificationsService] also delivers notifications while the app is in
/// foreground on Android using `flutter_local_notifications`, as can be found
/// in the official FCM docs, but you need to configure the android
/// the notifications channel in `AndroidManifest.xml` as the docs
/// explain (see link above). Ensure that the channel ID used in the manifest
/// is the same as the one provided to the constructor of this class.
class FcmNotificationsService {
  late final FcmClient _fcmNotifications;
  late final AndroidForegroundNotificationsPresenter
  _androidForegroundNotifications;

  FcmNotificationsService({
    required OnNotificationTapHandler onNotificationTap,

    /// The channel ID to use for foreground notifications on Android.
    /// Should be something meaningful for the project. We recommend using the
    /// app name.
    required String channelId,
  }) {
    _androidForegroundNotifications = AndroidForegroundNotificationsPresenter(
      onNotificationTap: onNotificationTap,
      channelId: channelId,
    );

    _fcmNotifications = FcmClient(
      onForegroundNotificationReceived: _onForegroundNotificationReceived,
      onNotificationTap: onNotificationTap,
    );
  }

  /// Must be called once before notifications are used for the first time.
  ///
  /// Configures notifications and ask permissions to deliver notifications,
  /// as appropriate for each platform.
  Future<void> setup() async {
    await _fcmNotifications.askPermission();
    await _androidForegroundNotifications.createChannel();
  }

  /// Must be called on every app launch before using notifications.
  ///
  /// It configures notifications for the current session.
  Future<void> init() async {
    await _fcmNotifications.init();
    await _androidForegroundNotifications.init();
  }

  /// Returns the auth token used to deliver remote notifications to this device.
  Future<String?> getDeviceToken() async {
    return _fcmNotifications.getDeviceToken();
  }

  /// Returns true if notifications are enabled on this device.
  Future<bool> areNotificationsEnabled() async {
    return _fcmNotifications.areEnabled();
  }

  /// Delivers notifications received while the app is in foreground on Android.
  ///
  /// Encodes the important information from the remote message in the payload
  /// due to how the `local_notification_plugin` handles notifications.
  Future<void> _onForegroundNotificationReceived(
    RemoteMessage remoteNotification,
  ) async {
    final notification = remoteNotification.notification;
    final title = notification?.title;
    final body = notification?.body;
    if (!Platform.isAndroid ||
        notification == null ||
        title == null ||
        body == null) {
      return;
    }

    final payload = <String, dynamic>{
      'id': remoteNotification.messageId,
      'title': title,
      'body': body,
      'sentTime': remoteNotification.sentTime?.toIso8601String(),
      'from': remoteNotification.from,
      'ttl': remoteNotification.ttl,
      'data': remoteNotification.data,
    };
    const maxIntegerLimit = 2147483647;
    await _androidForegroundNotifications.showNotification(
      id: DateTime.now().millisecondsSinceEpoch.remainder(maxIntegerLimit),
      title: title,
      body: body,
      payload: jsonEncode(payload),
    );
  }
}
