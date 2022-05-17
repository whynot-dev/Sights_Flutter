// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feature _$FeatureFromJson(Map<String, dynamic> json) {
  return Feature(
    type: json['type'] as String,
    id: json['id'] as String,
    geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    properties: Properties.fromJson(json['properties'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'geometry': instance.geometry,
      'properties': instance.properties,
    };
