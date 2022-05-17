import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/feature.dart';

part 'feature_collection_response.g.dart';

@JsonSerializable()
class FeatureCollectionResponse {
  FeatureCollectionResponse({
    required this.type,
    required this.features,
  });

  String type;
  List<Feature> features;

  factory FeatureCollectionResponse.fromJson(Map<String, dynamic> json) => _$FeatureCollectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureCollectionResponseToJson(this);
}
