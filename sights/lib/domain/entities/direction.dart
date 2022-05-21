import 'package:json_annotation/json_annotation.dart';

part 'direction.g.dart';

@JsonSerializable()
class Direction {
  Direction({
    required this.weight,
    required this.duration,
    required this.distance,
    required this.geometry,
  });

  double weight;
  double duration;
  double distance;
  String geometry;

  factory Direction.fromJson(Map<String, dynamic> json) => _$DirectionFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionToJson(this);
}
