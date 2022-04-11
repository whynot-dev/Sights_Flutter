// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    text: json['text'] as String?,
    level: json['level'] as int?,
    file: json['file'] == null
        ? null
        : ContentFile.fromJson(json['file'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'text': instance.text,
      'level': instance.level,
      'file': instance.file,
    };
