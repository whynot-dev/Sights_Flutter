// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Story _$StoryFromJson(Map<String, dynamic> json) {
  return Story(
    id: json['id'] as int,
    type: json['type'] as String,
    format: json['format'] as String,
    title: json['title'] as String?,
    description: json['description'] as String?,
    color: json['color'] as String?,
    background: json['background'] as String?,
    story: Media.fromJson(json['story'] as Map<String, dynamic>),
    preview: Media.fromJson(json['preview'] as Map<String, dynamic>),
    button: StoryButton.fromJson(json['button'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StoryToJson(Story instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'format': instance.format,
      'title': instance.title,
      'description': instance.description,
      'color': instance.color,
      'background': instance.background,
      'story': instance.story,
      'preview': instance.preview,
      'button': instance.button,
    };
