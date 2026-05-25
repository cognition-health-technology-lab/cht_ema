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
      tappedTime: DateTime.parse(json['tappedTime'] as String),
      sentTime: json['sentTime'] == null
          ? null
          : DateTime.parse(json['sentTime'] as String),
      from: json['from'] as String?,
      ttl: (json['ttl'] as num?)?.toInt(),
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'tappedTime': instance.tappedTime.toIso8601String(),
      'sentTime': instance.sentTime?.toIso8601String(),
      'from': instance.from,
      'ttl': instance.ttl,
      'data': instance.data,
    };
