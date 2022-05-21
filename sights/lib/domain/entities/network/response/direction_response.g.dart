// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionResponse _$DirectionResponseFromJson(Map<String, dynamic> json) {
  return DirectionResponse(
    routes: (json['routes'] as List<dynamic>)
        .map((e) => Direction.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DirectionResponseToJson(DirectionResponse instance) =>
    <String, dynamic>{
      'routes': instance.routes,
    };
