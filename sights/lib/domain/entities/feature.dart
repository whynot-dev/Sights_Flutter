
import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/geometry.dart';
import 'package:sights/domain/entities/properties.dart';

part 'feature.g.dart';

@JsonSerializable()
class Feature {
  Feature({
    required this.type,
    required this.id,
    required this.geometry,
    required this.properties,
  });

  String type;
  String id;
  Geometry geometry;
  Properties properties;

  factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureToJson(this);
}

/*
{
      "type": "Feature",
      "id": "3540856",
      "geometry": {
        "type": "Point",
        "coordinates": [
          39.705013,
          47.224373
        ]
      },
      "properties": {
        "xid": "R2900125",
        "name": "Цирк",
        "rate": 7,
        "osm": "relation/2900125",
        "wikidata": "Q24933402",
        "kinds": "circuses,cultural,theatres_and_entertainments,interesting_places"
      }
    },
 */
