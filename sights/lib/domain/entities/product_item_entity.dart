import 'package:freezed_annotation/freezed_annotation.dart';

import 'network/product.dart';

part 'product_item_entity.freezed.dart';

@freezed
class ProductItemEntity with _$ProductItemEntity {
  factory ProductItemEntity({
    required String id,
    required String name,
    required String imageUrl,
    required double price,
    @Default('₽') String currency,
    double? oldPrice,
    required bool isLiked,
  }) = _ProductItemEntity;

  factory ProductItemEntity.fromResponse(Product response) => ProductItemEntity(
    id: response.id,
    name: response.name,
    imageUrl: response.media.isNotEmpty ? response.media[0].path : '',
    isLiked: response.isLiked,
    price: response.sale != null ? response.sale! : response.price,
    oldPrice: response.sale != null ? response.price : null,
  );
}