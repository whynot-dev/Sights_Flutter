// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return Notification(
    id: json['id'] as int,
    isRead: json['isRead'] as bool,
    title: json['title'] as String,
    description: json['description'] as String,
    icon: json['icon'] as String,
  );
}

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isRead': instance.isRead,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
    };
