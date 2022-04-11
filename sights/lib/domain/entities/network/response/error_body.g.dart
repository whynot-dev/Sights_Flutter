// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorBody _$ErrorBodyFromJson(Map<String, dynamic> json) {
  return ErrorBody(
    success: json['success'] as bool,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$ErrorBodyToJson(ErrorBody instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
