import 'package:hive/hive.dart';
import 'package:sights/domain/entities/direction.dart';
import 'package:sights/domain/enums/transport_type.dart';

part 'save_route_entity.g.dart';

@HiveType(typeId: 1)
class SaveRouteEntity {
  SaveRouteEntity({
    required this.direction,
    required this.countSights,
    required this.transportType,
    required this.startAddress,
    required this.finishAddress,
  });

  @HiveField(0)
  Direction direction;
  @HiveField(1)
  int countSights;
  @HiveField(2)
  TransportType transportType;
  @HiveField(3)
  String startAddress;
  @HiveField(4)
  String finishAddress;
}
