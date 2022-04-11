import 'package:sights/domain/entities/product_entity.dart';
import 'package:sights/domain/entities/product_item_entity.dart';

import 'network/products_section.dart';

class ProductsSectionEntity {
  ProductsSectionEntity({
    required this.id,
    required this.title,
    required this.products,
  });

  int id;
  String title;
  List<ProductItemEntity> products;

  factory ProductsSectionEntity.fromResponse(ProductsSection response) => ProductsSectionEntity(
    id: response.id,
    title: response.name,
    products: _getProducts(response),
  );

  static List<ProductItemEntity> _getProducts(ProductsSection response) {
    var data = response.items.map((item) => ProductItemEntity.fromResponse(item)).toList();
    List<ProductItemEntity> products = [];
    data.forEach((item) {
      products.add(item);
    });
    return products;
  }
}
