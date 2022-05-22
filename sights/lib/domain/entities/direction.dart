import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'direction.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class Direction {
  Direction({
    required this.weight,
    required this.duration,
    required this.distance,
    required this.geometry,
  });

  @HiveField(0)
  double weight;
  @HiveField(1)
  double duration;
  @HiveField(2)
  double distance;
  @HiveField(3)
  String geometry;

  factory Direction.fromJson(Map<String, dynamic> json) => _$DirectionFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionToJson(this);
}
