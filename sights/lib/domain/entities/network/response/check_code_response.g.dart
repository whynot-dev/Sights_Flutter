// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckCodeResponse _$CheckCodeResponseFromJson(Map<String, dynamic> json) {
  return CheckCodeResponse(
    token: json['token'] as String,
    refresh: json['refresh'] as String,
  );
}

Map<String, dynamic> _$CheckCodeResponseToJson(CheckCodeResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh': instance.refresh,
    };
