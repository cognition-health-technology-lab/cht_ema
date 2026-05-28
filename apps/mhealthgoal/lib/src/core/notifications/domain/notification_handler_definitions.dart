import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mhealthgoal/src/core/notifications/domain/entities/notification.dart';

typedef OnNotificationTapHandler = void Function(Notification notification);
typedef OnForegroundNotificationReceived = void Function(RemoteMessage message);
