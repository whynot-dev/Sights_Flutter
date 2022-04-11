import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/network/product.dart';

part 'products_section.g.dart';

@JsonSerializable()
class ProductsSection {
  ProductsSection({
    required this.id,
    required this.name,
    required this.items,
  });

  int id;
  String name;
  List<Product> items;

  factory ProductsSection.fromJson(Map<String, dynamic> json) => _$ProductsSectionFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsSectionToJson(this);
}