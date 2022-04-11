// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return Banner(
    id: json['id'] as int,
    type: json['type'] as String,
    path: json['path'] as String,
    position: json['position'] as String,
  );
}

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'path': instance.path,
      'position': instance.position,
    };
