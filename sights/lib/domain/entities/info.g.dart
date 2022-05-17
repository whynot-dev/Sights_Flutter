// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) {
  return Info(
    src: json['src'] as String,
    srcId: json['src_id'] as int,
    description: json['descr'] as String,
  );
}

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'src': instance.src,
      'src_id': instance.srcId,
      'descr': instance.description,
    };
