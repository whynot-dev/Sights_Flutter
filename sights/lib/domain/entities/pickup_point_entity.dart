import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:sights/domain/entities/network/pickup_point.dart';

class PickupPointEntity {
  PickupPointEntity({
    required this.id,
    required this.name,
    required this.point,
    required this.type,
    required this.enabled,
    required this.dateAvailable,
    required this.price,
    required this.address,
    required this.previewUrlImage,
    required this.description,
    this.payments,
  });

  String id;
  String name;
  Point point;
  String type;
  bool enabled;
  List<String> dateAvailable;
  double price;
  String address;
  String previewUrlImage;
  String description;
  String? payments;

  factory PickupPointEntity.fromResponse(PickupPoint response) => PickupPointEntity(
        id: response.id,
        name: response.name,
        point: Point(latitude: response.geo[0], longitude: response.geo[1]),
        type: response.type,
        enabled: response.enabled,
        dateAvailable: response.available,
        price: response.price,
        address: response.address,
        previewUrlImage: response.preview,
        description: response.path,
        payments: response.path,
      );
}
