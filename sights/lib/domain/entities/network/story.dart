import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/network/media.dart';
import 'package:sights/domain/entities/network/story_button.dart';

part 'story.g.dart';

@JsonSerializable()
class Story {
  Story({
    required this.id,
    required this.type,
    required this.format,
    this.title,
    this.description,
    this.color,
    this.background,
    required this.story,
    required this.preview,
    required this.button,
  });

  int id;
  String type;
  String format;
  String? title;
  String? description;
  String? color;
  String? background;
  Media story;
  Media preview;
  StoryButton button;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);

  Map<String, dynamic> toJson() => _$StoryToJson(this);
}
