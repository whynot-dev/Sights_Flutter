import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/network/media.dart';
import 'package:sights/domain/entities/network/people.dart';

import 'content.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  Product({
    required this.id,
    required this.name,
    required this.price,
    this.sale,
    this.buy,
    this.description,
    this.content,
    required this.isLiked,
    required this.media,
    this.more,
    this.people,
  });

  String id;
  String name;
  String? description;
  double price;
  double? sale;
  double? buy;
  bool isLiked;
  List<Media> media;
  List<Content>? content;
  List<People>? people;
  dynamic more;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
