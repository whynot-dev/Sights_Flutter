import 'package:json_annotation/json_annotation.dart';

part 'city.g.dart';

@JsonSerializable()
class City {
  City({
    required this.id,
    required this.name,
    required this.selected,
    required this.center,
  });

  int id;
  String name;
  bool selected;
  Center center;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class Center {
  Center({
    required this.scale,
    required this.point,
  });

  int scale;
  PointCity point;

  factory Center.fromJson(Map<String, dynamic> json) => _$CenterFromJson(json);

  Map<String, dynamic> toJson() => _$CenterToJson(this);
}

@JsonSerializable()
class PointCity {
  PointCity({
    required this.lat,
    required this.long,
  });

  double lat;
  double long;

  factory PointCity.fromJson(Map<String, dynamic> json) => _$PointCityFromJson(json);

  Map<String, dynamic> toJson() => _$PointCityToJson(this);
}
