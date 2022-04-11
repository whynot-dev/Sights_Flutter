import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';

@JsonSerializable()
class Banner {
  Banner({
    required this.id,
    required this.type,
    required this.path,
    required this.position,
  });

  int id;
  String type;
  String path;
  String position;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);

  Map<String, dynamic> toJson() => _$BannerToJson(this);
}
