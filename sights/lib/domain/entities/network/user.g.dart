// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    fullName: json['fullName'] as String,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    middle_name: json['middle_name'] as String,
    birthday: json['birthday'] as String,
    gender: json['gender'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'middle_name': instance.middle_name,
      'birthday': instance.birthday,
      'gender': instance.gender,
    };
