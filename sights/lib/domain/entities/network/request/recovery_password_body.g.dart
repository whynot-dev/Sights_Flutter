// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecoveryPasswordBody _$RecoveryPasswordBodyFromJson(Map<String, dynamic> json) {
  return RecoveryPasswordBody(
    password: json['password'] as String,
    passwordConfirmation: json['password_confirmation'] as String,
  );
}

Map<String, dynamic> _$RecoveryPasswordBodyToJson(
        RecoveryPasswordBody instance) =>
    <String, dynamic>{
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
