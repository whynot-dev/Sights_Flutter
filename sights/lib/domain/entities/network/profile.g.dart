// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    userVerified: json['userVerified'] as bool,
    hasPassword: json['hasPassword'] as bool,
    emailVerified: json['emailVerified'] as bool,
    phone: json['phone'] as String,
    phoneVerified: json['phoneVerified'] as bool,
    email: json['email'] as String?,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    userVerifiedStatus: json['userVerifiedStatus'] as String,
    photo: json['photo'] as String?,
    documents: (json['documents'] as List<dynamic>?)
        ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
        .toList(),
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'userVerified': instance.userVerified,
      'hasPassword': instance.hasPassword,
      'emailVerified': instance.emailVerified,
      'phone': instance.phone,
      'phoneVerified': instance.phoneVerified,
      'email': instance.email,
      'user': instance.user,
      'userVerifiedStatus': instance.userVerifiedStatus,
      'photo': instance.photo,
      'documents': instance.documents,
      'address': instance.address,
    };
