import 'package:sights/domain/entities/network/category.dart';

class CategoryEntity {
  CategoryEntity({
    required this.id,
    this.type,
    required this.title,
    required this.url,
  });

  int id;
  String? type;
  String title;
  String url;

  factory CategoryEntity.fromResponse(Category response) => CategoryEntity(
        id: response.id,
        type: response.type,
        title: response.name,
        url: response.media.isNotEmpty ? response.media[0].path : '',
      );
}
