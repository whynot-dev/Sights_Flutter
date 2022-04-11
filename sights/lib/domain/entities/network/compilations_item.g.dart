// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compilations_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompilationsItem _$CompilationsItemFromJson(Map<String, dynamic> json) {
  return CompilationsItem(
    id: json['id'] as int,
    name: json['name'] as String,
    type: json['type'] as String,
    items: json['items'],
  );
}

Map<String, dynamic> _$CompilationsItemToJson(CompilationsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'items': instance.items,
    };
