import 'package:json_annotation/json_annotation.dart';

import '../story.dart';

part 'stories_response.g.dart';

@JsonSerializable()
class StoriesResponse {
  StoriesResponse({
    required this.total,
    required this.offset,
    required this.limit,
    required this.items,
  });

  int total;
  int offset;
  int limit;
  List<Story> items;

  factory StoriesResponse.fromJson(Map<String, dynamic> json) => _$StoriesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StoriesResponseToJson(this);
}
