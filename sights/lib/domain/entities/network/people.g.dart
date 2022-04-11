// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

People _$PeopleFromJson(Map<String, dynamic> json) {
  return People(
    story: Media.fromJson(json['story'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PeopleToJson(People instance) => <String, dynamic>{
      'story': instance.story,
    };
