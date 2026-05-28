import 'dart:convert' show jsonEncode;

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mhealthgoal/src/core/notifications/data/services/model_to_entity_mapper.dart';

void main() {
  group('remoteMessageToEntity', () {
    test('maps RemoteMessage to entity', () {
      const remoteMessage = RemoteMessage(
        messageId: 'test-id',
        notification: RemoteNotification(
          title: 'test title',
          body: 'test body',
        ),
        data: {'test-key': 'test-value'},
      );

      final result = remoteMessageToEntity(
        remoteMessage: remoteMessage,
        timeTapped: DateTime.now(),
      );

      expect(result.title, equals('test title'));
      expect(result.body, equals('test body'));
      expect(result.data, equals({'test-key': 'test-value'}));
    });

    test('maps RemoteMessage with null notification title to entity', () {
      const remoteMessage = RemoteMessage(
        messageId: 'test-id',
        notification: RemoteNotification(body: 'test body'),
      );

      expect(
        () => remoteMessageToEntity(
          remoteMessage: remoteMessage,
          timeTapped: DateTime.now(),
        ),
        throwsStateError,
      );
    });

    test('maps RemoteMessage with null notification body to entity', () {
      const remoteMessage = RemoteMessage(
        messageId: 'test-id',
        notification: RemoteNotification(title: 'test title'),
      );

      expect(
        () => remoteMessageToEntity(
          remoteMessage: remoteMessage,
          timeTapped: DateTime.now(),
        ),
        throwsStateError,
      );
    });

    test('maps RemoteMessage with null notification to entity', () {
      const remoteMessage = RemoteMessage(messageId: 'test-id');

      expect(
        () => remoteMessageToEntity(
          remoteMessage: remoteMessage,
          timeTapped: DateTime.now(),
        ),
        throwsStateError,
      );
    });

    test('maps RemoteMessage with empty data to entity', () {
      const remoteMessage = RemoteMessage(
        messageId: 'test-id',
        notification: RemoteNotification(
          title: 'test title',
          body: 'test body',
        ),
      );

      final result = remoteMessageToEntity(
        remoteMessage: remoteMessage,
        timeTapped: DateTime.now(),
      );

      expect(result.data, isEmpty);
    });
  });

  group('notificationResponseToEntity', () {
    test('maps NotificationResponse to entity', () {
      final sentTime = DateTime.now();
      final tappedTime = DateTime.now();
      final payload = jsonEncode({
        'id': 'test-id',
        'title': 'test title',
        'body': 'test body',
        'sentTime': sentTime.toIso8601String(),
        'from': 'test-from',
        'ttl': 120,
        'data': {'test-key': 'test-value'},
      });
      final notificationResponse = NotificationResponse(
        notificationResponseType: NotificationResponseType.selectedNotification,
        payload: payload,
      );

      final result = notificationResponseToEntity(
        notificationResponse: notificationResponse,
        tappedTime: tappedTime,
      );

      expect(result.id, equals('test-id'));
      expect(result.title, equals('test title'));
      expect(result.body, equals('test body'));
      expect(result.sentTime, equals(sentTime));
      expect(result.tappedTime, equals(tappedTime));
      expect(result.from, equals('test-from'));
      expect(result.ttl, equals(120));
      expect(result.data, equals({'test-key': 'test-value'}));
    });

    test(
      'maps NotificationResponse that only contains required args to entity',
      () {
        final tappedTime = DateTime.now();
        final payload = jsonEncode({
          'id': 'test-id',
          'title': 'test title',
          'body': 'test body',
        });
        final notificationResponse = NotificationResponse(
          notificationResponseType:
              NotificationResponseType.selectedNotification,
          payload: payload,
        );

        final result = notificationResponseToEntity(
          notificationResponse: notificationResponse,
          tappedTime: tappedTime,
        );

        expect(result.id, equals('test-id'));
        expect(result.title, equals('test title'));
        expect(result.body, equals('test body'));
        expect(result.tappedTime, equals(tappedTime));
      },
    );

    test('throws StateError when payload is null', () {
      const notificationResponse = NotificationResponse(
        notificationResponseType: NotificationResponseType.selectedNotification,
      );

      expect(
        () => notificationResponseToEntity(
          notificationResponse: notificationResponse,
          tappedTime: DateTime.now(),
        ),
        throwsStateError,
      );
    });
  });
}
