import 'package:flutter/foundation.dart' show debugPrint, kDebugMode;
import 'package:mhealthgoal/src/core/notifications/domain/entities/notification.dart';
import 'package:mhealthgoal/src/core/notifications/domain/services/fcm_notifications_service.dart';

class AppNotificationService {
  late final FcmNotificationsService _notificationsService;

  AppNotificationService() {
    _notificationsService = FcmNotificationsService(
      onNotificationTap: (Notification _) {},
      channelId: 'mhealthgoal_notifications',
    );
  }

  Future<void> setup() async {
    await _notificationsService.setup();
  }

  Future<void> init() async {
    await _notificationsService.init();
    if (kDebugMode) {
      debugPrint(
        'Device notification token: ${await _notificationsService.getDeviceToken()}',
      );
    }
  }
}
