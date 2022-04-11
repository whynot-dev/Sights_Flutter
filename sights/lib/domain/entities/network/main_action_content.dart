import 'package:json_annotation/json_annotation.dart';

part 'main_action_content.g.dart';

@JsonSerializable()
class MainActionContent {
  MainActionContent({
    required this.id,
    required this.title,
    required this.type,
  });

  String id;
  String title;
  String type;


  factory MainActionContent.fromJson(Map<String, dynamic> json) => _$MainActionContentFromJson(json);

  Map<String, dynamic> toJson() => _$MainActionContentToJson(this);
}