import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mhealthgoal/src/core/notifications/data/services/model_to_entity_mapper.dart';
import 'package:mhealthgoal/src/core/notifications/domain/notification_handler_definitions.dart';

/// Interacts directly with the external FCM to configure, manage,
/// and deliver remote notifications.
class FcmClient {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final OnForegroundNotificationReceived _onForegroundNotificationReceived;
  final OnNotificationTapHandler _onNotificationTap;

  FcmClient({
    required OnForegroundNotificationReceived onForegroundNotificationReceived,
    required OnNotificationTapHandler onNotificationTap,
  }) : _onForegroundNotificationReceived = onForegroundNotificationReceived,
       _onNotificationTap = onNotificationTap;

  Future<void> askPermission() async {
    await _firebaseMessaging.requestPermission(
      announcement: true,
      criticalAlert: true,
      provisional: true,
    );
  }

  /// Initialize notifications service.
  ///
  /// Must be called every time the app is launched.
  Future<void> init() async {
    await _initForegroundNotificationHandling();
    _initBackgroundNotificationHandling();
    await _initTerminatedNotificationHandling();
  }

  Future<void> _initForegroundNotificationHandling() async {
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) async =>
          _onForegroundNotificationReceived(message),
    );

    /// ios specific config
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  void _initBackgroundNotificationHandling() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      final timeTapped = DateTime.now();
      final notification = remoteMessageToEntity(
        remoteMessage: message,
        timeTapped: timeTapped,
      );
      _onNotificationTap(notification);
    });
  }

  Future<void> _initTerminatedNotificationHandling() async {
    final message = await _firebaseMessaging.getInitialMessage();
    if (message == null) {
      return;
    }
    final timeTapped = DateTime.now();
    final notification = remoteMessageToEntity(
      remoteMessage: message,
      timeTapped: timeTapped,
    );
    _onNotificationTap(notification);
  }

  /// Returns true if notifications are fully or provisionally enabled
  /// on this device.
  Future<bool> areEnabled() async {
    final settings = await _firebaseMessaging.getNotificationSettings();
    return settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional;
  }

  /// Returns the auth token used to deliver remote notifications to this device.
  Future<String?> getDeviceToken() async {
    return _firebaseMessaging.getToken();
  }
}
