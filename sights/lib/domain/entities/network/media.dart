import 'package:json_annotation/json_annotation.dart';

part 'media.g.dart';

@JsonSerializable()
class Media {
  Media({
    required this.type,
    required this.path,
    this.screen,
  });


  String type;
  String path;
  String? screen;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}
