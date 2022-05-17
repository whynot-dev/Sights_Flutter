// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  return Properties(
    xid: json['xid'] as String,
    name: json['name'] as String,
    rate: json['rate'] as int,
    osm: json['osm'] as String?,
    wikiData: json['wikidata'] as String?,
    kinds: json['kinds'] as String,
  );
}

Map<String, dynamic> _$PropertiesToJson(Properties instance) =>
    <String, dynamic>{
      'xid': instance.xid,
      'name': instance.name,
      'rate': instance.rate,
      'osm': instance.osm,
      'wikidata': instance.wikiData,
      'kinds': instance.kinds,
    };
