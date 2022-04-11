import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/domain/entities/product_item_entity.dart';

import 'content_entity.dart';
import 'media_entity.dart';
import 'network/product.dart';

part 'product_entity.freezed.dart';

@freezed
class ProductEntity with _$ProductEntity {
  factory ProductEntity({
    required String id,
    required String name,
    required String imageUrl,
    required double price,
    @Default('₽') String currency,
    double? oldPrice,
    String? description,
    double? buy,
    List<ContentEntity>? content,
    required bool isLiked,
    required List<MediaEntity> media,
    required List<ProductItemEntity> products,
    List<String>? people,
  }) = _ProductEntity;

  factory ProductEntity.fromResponse(Product response) => ProductEntity(
        id: response.id,
        name: response.name,
        description: response.description,
        imageUrl: response.media.isNotEmpty ? response.media[0].path : '',
        isLiked: response.isLiked,
        price: response.sale != null ? response.sale! : response.price,
        oldPrice: response.sale != null ? response.price : null,
        buy: response.buy,
        media: _getMedia(response),
        content: _getContent(response),
        products: _getProducts(response),
        people: _getPeople(response),
      );

  static List<MediaEntity> _getMedia(Product response) {
    List<MediaEntity> media = [];
    var data = response.media;
    data.forEach((item) {
      media.add(MediaEntity.fromResponse(item));
    });
    return media;
  }

  static dynamic _getContent(Product response) {
    List<ContentEntity> content = [];
    var data = response.content;
    if (data != null) {
      data.forEach((item) {
        content.add(ContentEntity.fromResponse(item));
      });
      return content;
    }
    return null;
  }

  static List<ProductItemEntity> _getProducts(Product response) {
    var data = response.more.map((item) => Product.fromJson(item)).toList();
    data = data.map((item) => ProductItemEntity.fromResponse(item)).toList();
    List<ProductItemEntity> products = [];
    data.forEach((item) {
      products.add(item);
    });
    return products;
  }

  static dynamic _getPeople(Product response) {
    var data = response.people;
    if (data != null) {
      List<String> people = [];
      data.forEach((item) {
        people.add(MediaEntity.fromResponse(item.story).imageUrl);
      });
      return people;
    }
    return null;
  }
}
