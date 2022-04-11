// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsSection _$ProductsSectionFromJson(Map<String, dynamic> json) {
  return ProductsSection(
    id: json['id'] as int,
    name: json['name'] as String,
    items: (json['items'] as List<dynamic>)
        .map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProductsSectionToJson(ProductsSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'items': instance.items,
    };
