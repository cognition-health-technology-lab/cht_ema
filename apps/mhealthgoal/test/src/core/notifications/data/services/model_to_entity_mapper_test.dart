import 'package:firebase_messaging/firebase_messaging.dart';
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
}
