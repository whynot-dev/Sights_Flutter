import 'package:json_annotation/json_annotation.dart';

part 'properties.g.dart';

@JsonSerializable()
class Properties {
  Properties({
    required this.xid,
    required this.name,
    required this.rate,
    this.osm,
    this.wikiData,
    required this.kinds,
  });

  String xid;
  String name;
  int rate;
  String? osm;
  @JsonKey(name: 'wikidata')
  String? wikiData;
  String kinds;

  factory Properties.fromJson(Map<String, dynamic> json) => _$PropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$PropertiesToJson(this);
}

/*
"properties": {
        "xid": "R2900125",
        "name": "Цирк",
        "rate": 7,
        "osm": "relation/2900125",
        "wikidata": "Q24933402",
        "kinds": "circuses,cultural,theatres_and_entertainments,interesting_places"
      }
 */
