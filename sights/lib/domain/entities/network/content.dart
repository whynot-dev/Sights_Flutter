import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/network/data.dart';

part 'content.g.dart';

@JsonSerializable()
class Content {
  Content({
    required this.id,
    required this.type,
    required this.data,
  });

  String id;
  String type;
  Data data;

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}