import 'package:json_annotation/json_annotation.dart';

part 'pickup_point.g.dart';

@JsonSerializable()
class PickupPoint {
  PickupPoint({
    required this.id,
    required this.name,
    required this.geo,
    required this.type,
    required this.enabled,
    required this.available,
    required this.price,
    required this.address,
    required this.preview,
    required this.path,
    this.payments,
  });

  String id;
  String name;
  List<double> geo;
  String type;
  bool enabled;
  List<String> available;
  double price;
  String address;
  String preview;
  String path;
  String? payments;

  factory PickupPoint.fromJson(Map<String, dynamic> json) => _$PickupPointFromJson(json);

  Map<String, dynamic> toJson() => _$PickupPointToJson(this);
}
