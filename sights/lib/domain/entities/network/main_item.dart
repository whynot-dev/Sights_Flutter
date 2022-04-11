import 'package:json_annotation/json_annotation.dart';

part 'main_item.g.dart';

@JsonSerializable()
class MainItem {
  MainItem({
    required this.id,
    required this.name,
    required this.type,
    this.position,
    this.items,
  });

  int id;
  String name;
  String type;
  @JsonKey(name: 'slug')
  String? position;
  dynamic items;

  factory MainItem.fromJson(Map<String, dynamic> json) => _$MainItemFromJson(json);

  Map<String, dynamic> toJson() => _$MainItemToJson(this);
}
