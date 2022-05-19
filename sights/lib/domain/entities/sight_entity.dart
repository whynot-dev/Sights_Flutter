import 'package:sights/domain/entities/feature.dart';
import 'package:sights/domain/enums/sight_type.dart';

class SightEntity {
  SightEntity({
    required this.feature,
    required this.sightType,
  });

  Feature feature;
  SightType sightType;
}
