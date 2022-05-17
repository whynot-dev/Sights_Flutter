// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikipedia_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikipediaInfo _$WikipediaInfoFromJson(Map<String, dynamic> json) {
  return WikipediaInfo(
    title: json['title'] as String,
    text: json['text'] as String,
    html: json['html'] as String,
  );
}

Map<String, dynamic> _$WikipediaInfoToJson(WikipediaInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'html': instance.html,
    };
