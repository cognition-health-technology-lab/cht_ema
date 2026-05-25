// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    _Notification(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      timeTapped: DateTime.parse(json['timeTapped'] as String),
      timeSent: json['timeSent'] == null
          ? null
          : DateTime.parse(json['timeSent'] as String),
      from: json['from'] as String?,
      ttl: (json['ttl'] as num?)?.toInt(),
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'timeTapped': instance.timeTapped.toIso8601String(),
      'timeSent': instance.timeSent?.toIso8601String(),
      'from': instance.from,
      'ttl': instance.ttl,
      'data': instance.data,
    };
