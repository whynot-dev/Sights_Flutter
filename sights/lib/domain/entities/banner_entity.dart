import 'package:sights/domain/enums/banner_type.dart';

import 'network/banner.dart';

class BannerEntity {
  BannerEntity({
    required this.id,
    required this.type,
    required this.imageUrl,
    required this.position,
  });

  int id;
  BannerType type;
  String imageUrl;
  String position;

  factory BannerEntity.fromResponse(Banner response) => BannerEntity(
        id: response.id,
        type: _getBannerType(response.type),
        imageUrl: response.path,
        position: response.position,
      );
}

BannerType _getBannerType(String type) {
  switch (type) {
    case 'big':
      return BannerType.big;
    case 'small':
      return BannerType.small;
  }
  return BannerType.big;
}
