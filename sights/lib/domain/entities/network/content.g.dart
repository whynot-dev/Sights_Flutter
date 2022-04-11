// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
    id: json['id'] as String,
    type: json['type'] as String,
    data: Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'data': instance.data,
    };
