// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_features_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFeaturesBody _$GetFeaturesBodyFromJson(Map<String, dynamic> json) {
  return GetFeaturesBody(
    lonMin: (json['lon_min'] as num).toDouble(),
    lonMax: (json['lon_max'] as num).toDouble(),
    latMin: (json['lat_min'] as num).toDouble(),
    latMax: (json['lat_max'] as num).toDouble(),
  );
}

Map<String, dynamic> _$GetFeaturesBodyToJson(GetFeaturesBody instance) =>
    <String, dynamic>{
      'lon_min': instance.lonMin,
      'lon_max': instance.lonMax,
      'lat_min': instance.latMin,
      'lat_max': instance.latMax,
    };
