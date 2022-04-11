import 'package:sights/domain/enums/content_type.dart';

import 'network/content.dart';

class ContentEntity {
  ContentEntity({
    required this.id,
    required this.type,
    this.imageUrl,
    this.text,
    this.level,
  });

  String id;
  ContentType type;
  String? imageUrl;
  String? text;
  int? level;

  factory ContentEntity.fromResponse(Content response) => ContentEntity(
    id: response.id,
    type: _getContentType(response.type),
    imageUrl: _getImage(_getContentType(response.type), response) ,
    text: _getText(_getContentType(response.type), response),
    level: _getLevel(_getContentType(response.type), response)
  );
}

ContentType _getContentType(String type) {
  switch (type) {
    case 'paragraph':
      return ContentType.paragraph;
    case 'image':
      return ContentType.image;
    case 'header':
      return ContentType.header;
  }
  return ContentType.none;
}

dynamic _getImage(ContentType type, Content response){
  if (type == ContentType.image){
    var data = response.data.file!.url;
    return data;
  }
  return null;
}

dynamic _getText(ContentType type, Content response){
  if (type == ContentType.paragraph || type == ContentType.header){
    var data = response.data.text;
    return data;
  }
  return null;
}
dynamic _getLevel(ContentType type, Content response){
  if (type == ContentType.paragraph || type == ContentType.header){
    var data = response.data.level;
    return data;
  }
  return null;
}