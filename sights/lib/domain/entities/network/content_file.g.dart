// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentFile _$ContentFileFromJson(Map<String, dynamic> json) {
  return ContentFile(
    url: json['url'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
  );
}

Map<String, dynamic> _$ContentFileToJson(ContentFile instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
