import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/network/media.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  Category({
    required this.id,
    required this.name,
    required this.type,
    required this.media,
  });

  int id;
  String name;
  String type;
  List<Media> media;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}