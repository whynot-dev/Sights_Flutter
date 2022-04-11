// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainItem _$MainItemFromJson(Map<String, dynamic> json) {
  return MainItem(
    id: json['id'] as int,
    name: json['name'] as String,
    type: json['type'] as String,
    position: json['slug'] as String?,
    items: json['items'],
  );
}

Map<String, dynamic> _$MainItemToJson(MainItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'slug': instance.position,
      'items': instance.items,
    };
