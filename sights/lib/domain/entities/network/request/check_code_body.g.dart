// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_code_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckCodeBody _$CheckCodeBodyFromJson(Map<String, dynamic> json) {
  return CheckCodeBody(
    token: json['token'] as String,
    code: json['code'] as String,
  );
}

Map<String, dynamic> _$CheckCodeBodyToJson(CheckCodeBody instance) =>
    <String, dynamic>{
      'token': instance.token,
      'code': instance.code,
    };
