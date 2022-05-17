import 'package:json_annotation/json_annotation.dart';

part 'get_features_body.g.dart';

@JsonSerializable()
class GetFeaturesBody {
  GetFeaturesBody({
    required this.lonMin,
    required this.lonMax,
    required this.latMin,
    required this.latMax,
  });

  @JsonKey(name: 'lon_min')
  double lonMin;
  @JsonKey(name: 'lon_max')
  double lonMax;
  @JsonKey(name: 'lat_min')
  double latMin;
  @JsonKey(name: 'lat_max')
  double latMax;

  factory GetFeaturesBody.fromJson(Map<String, dynamic> json) => _$GetFeaturesBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetFeaturesBodyToJson(this);
}
