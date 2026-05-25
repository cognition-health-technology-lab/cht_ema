import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    required String id,
    required String title,
    required String body,
    required DateTime tappedTime,
    DateTime? sentTime,
    String? from,
    int? ttl,
    Map<String, dynamic>? data,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
