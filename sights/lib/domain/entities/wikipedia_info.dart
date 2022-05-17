import 'package:json_annotation/json_annotation.dart';

part 'wikipedia_info.g.dart';

@JsonSerializable()
class WikipediaInfo {
  WikipediaInfo({
    required this.title,
    required this.text,
    required this.html,
  });

  String title;
  String text;
  String html;

  factory WikipediaInfo.fromJson(Map<String, dynamic> json) => _$WikipediaInfoFromJson(json);

  Map<String, dynamic> toJson() => _$WikipediaInfoToJson(this);
}
