import 'package:sights/domain/entities/direction.dart';
import 'package:sights/domain/enums/transport_type.dart';

class DirectionEntity {
  DirectionEntity({
    required this.direction,
    required this.transportType,
    this.isSaved = false,
  });

  Direction direction;
  TransportType transportType;
  bool isSaved;
}
