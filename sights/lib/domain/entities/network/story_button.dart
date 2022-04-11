import 'package:json_annotation/json_annotation.dart';

part 'story_button.g.dart';

@JsonSerializable()
class StoryButton {
  StoryButton({
    this.title,
    required this.url,
    required this.type,
    required this.color,
    required this.background,
  });

  String? title;
  String url;
  String type;
  String color;
  String background;

  factory StoryButton.fromJson(Map<String, dynamic> json) => _$StoryButtonFromJson(json);

  Map<String, dynamic> toJson() => _$StoryButtonToJson(this);
}
