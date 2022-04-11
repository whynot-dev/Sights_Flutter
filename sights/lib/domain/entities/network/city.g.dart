// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) {
  return City(
    id: json['id'] as int,
    name: json['name'] as String,
    selected: json['selected'] as bool,
    center: Center.fromJson(json['center'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'selected': instance.selected,
      'center': instance.center,
    };

Center _$CenterFromJson(Map<String, dynamic> json) {
  return Center(
    scale: json['scale'] as int,
    point: PointCity.fromJson(json['point'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CenterToJson(Center instance) => <String, dynamic>{
      'scale': instance.scale,
      'point': instance.point,
    };

PointCity _$PointCityFromJson(Map<String, dynamic> json) {
  return PointCity(
    lat: (json['lat'] as num).toDouble(),
    long: (json['long'] as num).toDouble(),
  );
}

Map<String, dynamic> _$PointCityToJson(PointCity instance) => <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };
