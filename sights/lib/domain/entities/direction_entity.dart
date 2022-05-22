import 'package:sights/domain/entities/direction.dart';
import 'package:sights/domain/enums/transport_type.dart';

class DirectionEntity {
  DirectionEntity({
    required this.direction,
    required this.transportType,
    this.routeInterestValue = 0.625,
    this.countSights = 0,
    this.isSaved = false,
  });

  Direction direction;
  TransportType transportType;
  double routeInterestValue;
  int countSights;
  bool isSaved;
}
