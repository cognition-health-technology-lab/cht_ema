import 'dart:convert' show jsonDecode;

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mhealthgoal/src/core/notifications/domain/entities/notification.dart';

/// Converts a [RemoteMessage] from FCM into a [Notification] entity.
Notification remoteMessageToEntity({
  required RemoteMessage remoteMessage,
  required DateTime timeTapped,
}) {
  final title = remoteMessage.notification?.title;
  final body = remoteMessage.notification?.body;
  if (title == null || body == null) {
    throw StateError(
      'RemoteMessage cannot be converted to Notification because title or body is missing.',
    );
  }

  final id =
      remoteMessage.messageId ??
      DateTime.now().millisecondsSinceEpoch.toString();
  final notification = Notification(
    id: id,
    title: title,
    body: body,
    timeTapped: timeTapped,
    timeSent: remoteMessage.sentTime,
    from: remoteMessage.from,
    ttl: remoteMessage.ttl,
    data: remoteMessage.data,
  );
  return notification;
}

/// Converts a [NotificationResponse] from FCM into a [Notification] entity.
Notification notificationResponseToEntity({
  required NotificationResponse notificationResponse,
  required DateTime timeTapped,
}) {
  final payload = notificationResponse.payload;
  if (payload == null) {
    throw StateError(
      'NotificationResponse cannot be converted to Notification because payload is missing.',
    );
  }

  final jsonPayload = jsonDecode(payload) as Map<String, dynamic>;
  final notification = Notification(
    /// NotificationResponse.id can't be used because it doesn't represent
    /// fcm's notification id.
    id: jsonPayload['id'] as String,
    title: jsonPayload['title'] as String,
    body: jsonPayload['body'] as String,
    timeTapped: timeTapped,
    timeSent: jsonPayload['sentTime'] as DateTime?,
    from: jsonPayload['from'] as String?,
    ttl: jsonPayload['ttl'] as int?,
    data: jsonPayload['data'] as Map<String, dynamic>?,
  );
  return notification;
}
