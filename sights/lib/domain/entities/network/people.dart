import 'package:json_annotation/json_annotation.dart';

import 'media.dart';

part 'people.g.dart';

@JsonSerializable()
class People {
  People({
    required this.story,
  });

  Media story;

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);

  Map<String, dynamic> toJson() => _$PeopleToJson(this);
}
