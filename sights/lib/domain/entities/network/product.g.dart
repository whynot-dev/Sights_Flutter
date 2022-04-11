// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    id: json['id'] as String,
    name: json['name'] as String,
    price: (json['price'] as num).toDouble(),
    sale: (json['sale'] as num?)?.toDouble(),
    buy: (json['buy'] as num?)?.toDouble(),
    description: json['description'] as String?,
    content: (json['content'] as List<dynamic>?)
        ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
        .toList(),
    isLiked: json['isLiked'] as bool,
    media: (json['media'] as List<dynamic>)
        .map((e) => Media.fromJson(e as Map<String, dynamic>))
        .toList(),
    more: json['more'],
    people: (json['people'] as List<dynamic>?)
        ?.map((e) => People.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'sale': instance.sale,
      'buy': instance.buy,
      'isLiked': instance.isLiked,
      'media': instance.media,
      'content': instance.content,
      'people': instance.people,
      'more': instance.more,
    };
