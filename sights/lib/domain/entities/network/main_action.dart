import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/network/main_action_content.dart';

part 'main_action.g.dart';

@JsonSerializable()
class MainAction {
  MainAction({
    required this.title,
    this.icon,
    this.image,
    this.id,
    this.link,
  });

  String title;
  String? icon;
  String? image;
  String? id;
  MainActionContent? link;

  factory MainAction.fromJson(Map<String, dynamic> json) => _$MainActionFromJson(json);

  Map<String, dynamic> toJson() => _$MainActionToJson(this);
}
