import 'dart:convert';

import 'package:sights/domain/entities/banner_entity.dart';
import 'package:sights/domain/entities/category_entity.dart';
import 'package:sights/domain/entities/product_item_entity.dart';
import 'package:sights/domain/entities/products_section_entity.dart';
import 'package:sights/domain/enums/main_item_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'network/category.dart';
import 'network/main_item.dart';
import 'network/product.dart';

part 'main_item_entity.freezed.dart';

@freezed
class MainItemEntity with _$MainItemEntity {
  factory MainItemEntity({
    required int id,
    String? name,
    required MainItemType type,
    String? position,
    required dynamic item,
  }) = _MainItemEntity;

  factory MainItemEntity.fromResponse(MainItem response) => MainItemEntity(
        id: response.id,
        name: response.name,
        type: _getMainItemType(response.type),
        position: response.position,
        item: _getItem(_getMainItemType(response.type), response),
      );
}

MainItemType _getMainItemType(String type) {
  switch (type) {
    case 'categories':
      return MainItemType.category;
    case 'banner':
      return MainItemType.banner;
    case 'items':
      return MainItemType.sectionProducts;
  }
  return MainItemType.none;
}

dynamic _getItem(MainItemType type, MainItem response) {
  switch (type) {
    case MainItemType.category:
      return _getCategories(response);
    case MainItemType.sectionProducts:
      return _getProductsSection(response);
    case MainItemType.banner:
      List<BannerEntity> banners = [];
      return banners;
    case MainItemType.none:
      return null;
  }
}

List<CategoryEntity> _getCategories(MainItem response) {
  List<CategoryEntity> categories = [];
  var data = response.items.map((item) => Category.fromJson(item)).toList();
  data = data.map((item) => CategoryEntity.fromResponse(item)).toList();
  data.forEach((item) {
    categories.add(item);
  });
  return categories;
}

ProductsSectionEntity _getProductsSection(MainItem response) {
  var data = response.items.map((item) => Product.fromJson(item)).toList();
  data = data.map((item) => ProductItemEntity.fromResponse(item)).toList();
  List<ProductItemEntity> products = [];
  data.forEach((item) {
    products.add(item);
  });

  return ProductsSectionEntity(
    id: response.id,
    title: response.name,
    products: products,
  );
}
