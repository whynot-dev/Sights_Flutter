import 'package:sights/domain/enums/media_type.dart';

import 'network/media.dart';

class MediaEntity {
  MediaEntity({
    required this.type,
    required this.imageUrl,
  });

  MediaType type;
  String imageUrl;

  factory MediaEntity.fromResponse(Media response) => MediaEntity(
    type: _getMediaType(response.type),
    imageUrl: response.path,
  );
}

MediaType _getMediaType(String type) {
  switch (type) {
    case 'preview':
      return MediaType.preview;
    case 'content':
      return MediaType.content;
  }
  return MediaType.none;
}

