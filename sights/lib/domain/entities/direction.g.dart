// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Direction _$DirectionFromJson(Map<String, dynamic> json) {
  return Direction(
    weight: (json['weight'] as num).toDouble(),
    duration: (json['duration'] as num).toDouble(),
    distance: (json['distance'] as num).toDouble(),
    geometry: json['geometry'] as String,
  );
}

Map<String, dynamic> _$DirectionToJson(Direction instance) => <String, dynamic>{
      'weight': instance.weight,
      'duration': instance.duration,
      'distance': instance.distance,
      'geometry': instance.geometry,
    };
