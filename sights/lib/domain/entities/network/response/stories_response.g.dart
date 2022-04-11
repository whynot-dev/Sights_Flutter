// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoriesResponse _$StoriesResponseFromJson(Map<String, dynamic> json) {
  return StoriesResponse(
    total: json['total'] as int,
    offset: json['offset'] as int,
    limit: json['limit'] as int,
    items: (json['items'] as List<dynamic>)
        .map((e) => Story.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$StoriesResponseToJson(StoriesResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'offset': instance.offset,
      'limit': instance.limit,
      'items': instance.items,
    };
