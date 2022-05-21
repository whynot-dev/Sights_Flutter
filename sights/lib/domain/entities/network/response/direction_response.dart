import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/direction.dart';

part 'direction_response.g.dart';

@JsonSerializable()
class DirectionResponse {
  DirectionResponse({
    required this.routes,
  });

  List<Direction> routes;

  factory DirectionResponse.fromJson(Map<String, dynamic> json) => _$DirectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionResponseToJson(this);
}
