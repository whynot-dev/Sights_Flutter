// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenResponse _$RefreshTokenResponseFromJson(Map<String, dynamic> json) {
  return RefreshTokenResponse(
    token: json['token'] as String,
    refresh: json['refresh'] as String,
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$RefreshTokenResponseToJson(
        RefreshTokenResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh': instance.refresh,
      'type': instance.type,
    };
