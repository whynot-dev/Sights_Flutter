// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media(
    type: json['type'] as String,
    path: json['path'] as String,
    screen: json['screen'] as String?,
  );
}

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'type': instance.type,
      'path': instance.path,
      'screen': instance.screen,
    };
