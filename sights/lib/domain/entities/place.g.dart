// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return Place(
    xid: json['xid'] as String,
    name: json['name'] as String,
    kinds: json['kinds'] as String?,
    osm: json['osm'] as String?,
    wikiData: json['wikidata'] as String?,
    rate: json['rate'] as String,
    image: json['image'] as String?,
    preview: json['preview'] == null
        ? null
        : Preview.fromJson(json['preview'] as Map<String, dynamic>),
    wikipedia: json['wikipedia'] as String?,
    wikipediaExtracts: json['wikipedia_extracts'] == null
        ? null
        : WikipediaInfo.fromJson(
            json['wikipedia_extracts'] as Map<String, dynamic>),
    voyage: json['voyage'] as String?,
    url: json['url'] as String?,
    otm: json['otm'] as String,
    info: json['info'] == null
        ? null
        : Info.fromJson(json['info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlaceToJson(Place instance) => <String, dynamic>{
      'xid': instance.xid,
      'name': instance.name,
      'kinds': instance.kinds,
      'osm': instance.osm,
      'wikidata': instance.wikiData,
      'rate': instance.rate,
      'image': instance.image,
      'preview': instance.preview,
      'wikipedia': instance.wikipedia,
      'wikipedia_extracts': instance.wikipediaExtracts,
      'voyage': instance.voyage,
      'url': instance.url,
      'otm': instance.otm,
      'info': instance.info,
    };
