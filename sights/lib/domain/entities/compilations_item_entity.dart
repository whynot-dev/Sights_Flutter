import 'dart:convert';

import 'package:sights/domain/entities/product_entity.dart';
import 'package:sights/domain/entities/product_item_entity.dart';
import 'package:sights/domain/entities/products_section_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/domain/enums/compilations_item_type.dart';

import 'network/compilations_item.dart';
import 'network/product.dart';
import 'network/products_section.dart';

part 'compilations_item_entity.freezed.dart';

@freezed
class CompilationsItemEntity with _$CompilationsItemEntity {
  factory CompilationsItemEntity({
    required int id,
    required String name,
    required CompilationsItemType type,
    required List<ProductsSectionEntity> compilation,
  }) = _CompilationsItemEntity;

  factory CompilationsItemEntity.fromResponse(CompilationsItem response) => CompilationsItemEntity(
        id: response.id,
        name: response.name,
        type: _getCompilationsItemType(response.type),
        compilation: _getItem(_getCompilationsItemType(response.type), response),
      );

  static CompilationsItemType _getCompilationsItemType(String? type) {
    switch (type) {
      case 'category':
        return CompilationsItemType.category;
      case 'collection':
        return CompilationsItemType.collection;
    }
    return CompilationsItemType.none;
  }

  static dynamic _getItem(CompilationsItemType type, CompilationsItem response) {
    switch (type) {
      case CompilationsItemType.category:
        return _getCategory(response);
      case CompilationsItemType.collection:
        return _getCollection(response);
      case CompilationsItemType.none:
        return null;
    }
  }

  static List<ProductsSectionEntity> _getCategory(CompilationsItem response) {
    List<ProductsSectionEntity> items = [];
    var data = response.items.map((item) => Product.fromJson(item)).toList();
    data = data.map((item) => ProductItemEntity.fromResponse(item)).toList();
    List<ProductItemEntity> products = [];
    data.forEach((item) {
      products.add(item);
    });

    ProductsSectionEntity item = ProductsSectionEntity(
      id: response.id,
      title: response.name,
      products: products,
    );
    items.add(item);
    return items;
  }

  static List<ProductsSectionEntity> _getCollection(CompilationsItem response) {
    var data = response.items.map((item) => ProductsSection.fromJson(item)).toList();
    data = data.map((item) => ProductsSectionEntity.fromResponse(item)).toList();
    List<ProductsSectionEntity> collection = [];
    data.forEach((item) {
      collection.add(item);
    });
    return collection;
  }
}
