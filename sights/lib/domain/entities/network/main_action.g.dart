// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainAction _$MainActionFromJson(Map<String, dynamic> json) {
  return MainAction(
    title: json['title'] as String,
    icon: json['icon'] as String?,
    image: json['image'] as String?,
    id: json['id'] as String?,
    link: json['link'] == null
        ? null
        : MainActionContent.fromJson(json['link'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MainActionToJson(MainAction instance) =>
    <String, dynamic>{
      'title': instance.title,
      'icon': instance.icon,
      'image': instance.image,
      'id': instance.id,
      'link': instance.link,
    };
