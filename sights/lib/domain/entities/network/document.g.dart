// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return Document(
    type: json['type'] as String,
    number: json['number'] as String,
    serial: json['serial'] as String,
    issued_by: json['issued_by'] as String,
    when_issued: DateTime.parse(json['when_issued'] as String),
    photo: (json['photo'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'type': instance.type,
      'number': instance.number,
      'serial': instance.serial,
      'issued_by': instance.issued_by,
      'when_issued': instance.when_issued.toIso8601String(),
      'photo': instance.photo,
    };
