import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/preview.dart';
import 'package:sights/domain/entities/wikipedia_info.dart';

import 'info.dart';

part 'place.g.dart';

@JsonSerializable()
class Place {
  Place({
    required this.xid,
    required this.name,
    this.kinds,
    this.osm,
    this.wikiData,
    required this.rate,
    this.image,
    this.preview,
    this.wikipedia,
    this.wikipediaExtracts,
    this.voyage,
    this.url,
    required this.otm,
    this.info,
  });

  String xid;
  String name;
  String? kinds;
  String? osm;
  @JsonKey(name: 'wikidata')
  String? wikiData;
  String rate;
  String? image;
  Preview? preview;
  String? wikipedia;
  @JsonKey(name: 'wikipedia_extracts')
  WikipediaInfo? wikipediaExtracts;
  String? voyage;
  String? url;
  String otm;
  Info? info;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceToJson(this);
}

// Places{
// xid*	string
// Уникальный идентификатор объекта
//
// name*	string
// Наименование объекта
//
// kinds	string
// Категории объекта см. Перечень категорий
//
// osm	string
// Уникальный идентификатор объекта в OpenStreetMap
//
// wikidata	string
// Уникальный идентификатор объекта в Викиданных (Wikidata)
//
// rate*	string
// Рейтинг известности объекта
//
// Enum:
// Array [ 7 ]
// image	string
// Ссылка на изображение объекта
//
// preview	{...}
// wikipedia	string
// Ссылка на объект в Википедии
//
// wikipedia_extracts	{...}
// voyage	string
// Ссылка на объект в WikiVoyage
//
// url	string
// Ссылка на сайт объекта
//
// otm*	string
// Ссылка на карточку объекта на сайте opentripmap.com
//
// sources*	{...}
// info	{...}
// bbox	{...}
// point*	{...}
// }
