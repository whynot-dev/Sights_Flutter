// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProfileBody _$CreateProfileBodyFromJson(Map<String, dynamic> json) {
  return CreateProfileBody(
    lastName: json['lastName'] as String,
    firstName: json['firstName'] as String,
    middleName: json['middleName'] as String,
    birthday: DateTime.parse(json['birthday'] as String),
    gender: json['gender'] as String,
    email: json['email'] as String,
    documents: (json['documents'] as List<dynamic>)
        .map((e) => Document.fromJson(e as Map<String, dynamic>))
        .toList(),
    address: (json['address'] as List<dynamic>)
        .map((e) => AuthorizationAddress.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CreateProfileBodyToJson(CreateProfileBody instance) =>
    <String, dynamic>{
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'birthday': instance.birthday.toIso8601String(),
      'gender': instance.gender,
      'email': instance.email,
      'documents': instance.documents,
      'address': instance.address,
    };
