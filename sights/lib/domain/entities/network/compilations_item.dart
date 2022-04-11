import 'package:json_annotation/json_annotation.dart';

part 'compilations_item.g.dart';

@JsonSerializable()
class CompilationsItem {
  CompilationsItem({
    required this.id,
    required this.name,
    required this.type,
    required this.items,
  });

  int id;
  String name;
  String type;
  dynamic items;

  factory CompilationsItem.fromJson(Map<String, dynamic> json) => _$CompilationsItemFromJson(json);

  Map<String, dynamic> toJson() => _$CompilationsItemToJson(this);
}