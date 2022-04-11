// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEntityTearOff {
  const _$ProductEntityTearOff();

  _ProductEntity call(
      {required String id,
      required String name,
      required String imageUrl,
      required double price,
      String currency = '₽',
      double? oldPrice,
      String? description,
      double? buy,
      List<ContentEntity>? content,
      required bool isLiked,
      required List<MediaEntity> media,
      required List<ProductItemEntity> products,
      List<String>? people}) {
    return _ProductEntity(
      id: id,
      name: name,
      imageUrl: imageUrl,
      price: price,
      currency: currency,
      oldPrice: oldPrice,
      description: description,
      buy: buy,
      content: content,
      isLiked: isLiked,
      media: media,
      products: products,
      people: people,
    );
  }
}

/// @nodoc
const $ProductEntity = _$ProductEntityTearOff();

/// @nodoc
mixin _$ProductEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double? get oldPrice => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get buy => throw _privateConstructorUsedError;
  List<ContentEntity>? get content => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  List<MediaEntity> get media => throw _privateConstructorUsedError;
  List<ProductItemEntity> get products => throw _privateConstructorUsedError;
  List<String>? get people => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String imageUrl,
      double price,
      String currency,
      double? oldPrice,
      String? description,
      double? buy,
      List<ContentEntity>? content,
      bool isLiked,
      List<MediaEntity> media,
      List<ProductItemEntity> products,
      List<String>? people});
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  final ProductEntity _value;
  // ignore: unused_field
  final $Res Function(ProductEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? oldPrice = freezed,
    Object? description = freezed,
    Object? buy = freezed,
    Object? content = freezed,
    Object? isLiked = freezed,
    Object? media = freezed,
    Object? products = freezed,
    Object? people = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: oldPrice == freezed
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      buy: buy == freezed
          ? _value.buy
          : buy // ignore: cast_nullable_to_non_nullable
              as double?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentEntity>?,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaEntity>,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductItemEntity>,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductEntityCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$ProductEntityCopyWith(
          _ProductEntity value, $Res Function(_ProductEntity) then) =
      __$ProductEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String imageUrl,
      double price,
      String currency,
      double? oldPrice,
      String? description,
      double? buy,
      List<ContentEntity>? content,
      bool isLiked,
      List<MediaEntity> media,
      List<ProductItemEntity> products,
      List<String>? people});
}

/// @nodoc
class __$ProductEntityCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res>
    implements _$ProductEntityCopyWith<$Res> {
  __$ProductEntityCopyWithImpl(
      _ProductEntity _value, $Res Function(_ProductEntity) _then)
      : super(_value, (v) => _then(v as _ProductEntity));

  @override
  _ProductEntity get _value => super._value as _ProductEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? oldPrice = freezed,
    Object? description = freezed,
    Object? buy = freezed,
    Object? content = freezed,
    Object? isLiked = freezed,
    Object? media = freezed,
    Object? products = freezed,
    Object? people = freezed,
  }) {
    return _then(_ProductEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: oldPrice == freezed
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      buy: buy == freezed
          ? _value.buy
          : buy // ignore: cast_nullable_to_non_nullable
              as double?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentEntity>?,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaEntity>,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductItemEntity>,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_ProductEntity implements _ProductEntity {
  _$_ProductEntity(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.price,
      this.currency = '₽',
      this.oldPrice,
      this.description,
      this.buy,
      this.content,
      required this.isLiked,
      required this.media,
      required this.products,
      this.people});

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final double price;
  @JsonKey(defaultValue: '₽')
  @override
  final String currency;
  @override
  final double? oldPrice;
  @override
  final String? description;
  @override
  final double? buy;
  @override
  final List<ContentEntity>? content;
  @override
  final bool isLiked;
  @override
  final List<MediaEntity> media;
  @override
  final List<ProductItemEntity> products;
  @override
  final List<String>? people;

  @override
  String toString() {
    return 'ProductEntity(id: $id, name: $name, imageUrl: $imageUrl, price: $price, currency: $currency, oldPrice: $oldPrice, description: $description, buy: $buy, content: $content, isLiked: $isLiked, media: $media, products: $products, people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.oldPrice, oldPrice) ||
                const DeepCollectionEquality()
                    .equals(other.oldPrice, oldPrice)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.buy, buy) ||
                const DeepCollectionEquality().equals(other.buy, buy)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.isLiked, isLiked) ||
                const DeepCollectionEquality()
                    .equals(other.isLiked, isLiked)) &&
            (identical(other.media, media) ||
                const DeepCollectionEquality().equals(other.media, media)) &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.people, people) ||
                const DeepCollectionEquality().equals(other.people, people)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(oldPrice) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(buy) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(isLiked) ^
      const DeepCollectionEquality().hash(media) ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(people);

  @JsonKey(ignore: true)
  @override
  _$ProductEntityCopyWith<_ProductEntity> get copyWith =>
      __$ProductEntityCopyWithImpl<_ProductEntity>(this, _$identity);
}

abstract class _ProductEntity implements ProductEntity {
  factory _ProductEntity(
      {required String id,
      required String name,
      required String imageUrl,
      required double price,
      String currency,
      double? oldPrice,
      String? description,
      double? buy,
      List<ContentEntity>? content,
      required bool isLiked,
      required List<MediaEntity> media,
      required List<ProductItemEntity> products,
      List<String>? people}) = _$_ProductEntity;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  double? get oldPrice => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  double? get buy => throw _privateConstructorUsedError;
  @override
  List<ContentEntity>? get content => throw _privateConstructorUsedError;
  @override
  bool get isLiked => throw _privateConstructorUsedError;
  @override
  List<MediaEntity> get media => throw _privateConstructorUsedError;
  @override
  List<ProductItemEntity> get products => throw _privateConstructorUsedError;
  @override
  List<String>? get people => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductEntityCopyWith<_ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
