// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryButton _$StoryButtonFromJson(Map<String, dynamic> json) {
  return StoryButton(
    title: json['title'] as String?,
    url: json['url'] as String,
    type: json['type'] as String,
    color: json['color'] as String,
    background: json['background'] as String,
  );
}

Map<String, dynamic> _$StoryButtonToJson(StoryButton instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'type': instance.type,
      'color': instance.color,
      'background': instance.background,
    };
