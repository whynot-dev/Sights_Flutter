// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeatureCollectionResponse _$FeatureCollectionResponseFromJson(
    Map<String, dynamic> json) {
  return FeatureCollectionResponse(
    type: json['type'] as String,
    features: (json['features'] as List<dynamic>)
        .map((e) => Feature.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$FeatureCollectionResponseToJson(
        FeatureCollectionResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'features': instance.features,
    };
