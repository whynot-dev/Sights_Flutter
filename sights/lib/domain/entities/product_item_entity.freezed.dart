// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductItemEntityTearOff {
  const _$ProductItemEntityTearOff();

  _ProductItemEntity call(
      {required String id,
      required String name,
      required String imageUrl,
      required double price,
      String currency = '₽',
      double? oldPrice,
      required bool isLiked}) {
    return _ProductItemEntity(
      id: id,
      name: name,
      imageUrl: imageUrl,
      price: price,
      currency: currency,
      oldPrice: oldPrice,
      isLiked: isLiked,
    );
  }
}

/// @nodoc
const $ProductItemEntity = _$ProductItemEntityTearOff();

/// @nodoc
mixin _$ProductItemEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double? get oldPrice => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductItemEntityCopyWith<ProductItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemEntityCopyWith<$Res> {
  factory $ProductItemEntityCopyWith(
          ProductItemEntity value, $Res Function(ProductItemEntity) then) =
      _$ProductItemEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String imageUrl,
      double price,
      String currency,
      double? oldPrice,
      bool isLiked});
}

/// @nodoc
class _$ProductItemEntityCopyWithImpl<$Res>
    implements $ProductItemEntityCopyWith<$Res> {
  _$ProductItemEntityCopyWithImpl(this._value, this._then);

  final ProductItemEntity _value;
  // ignore: unused_field
  final $Res Function(ProductItemEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? oldPrice = freezed,
    Object? isLiked = freezed,
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
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProductItemEntityCopyWith<$Res>
    implements $ProductItemEntityCopyWith<$Res> {
  factory _$ProductItemEntityCopyWith(
          _ProductItemEntity value, $Res Function(_ProductItemEntity) then) =
      __$ProductItemEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String imageUrl,
      double price,
      String currency,
      double? oldPrice,
      bool isLiked});
}

/// @nodoc
class __$ProductItemEntityCopyWithImpl<$Res>
    extends _$ProductItemEntityCopyWithImpl<$Res>
    implements _$ProductItemEntityCopyWith<$Res> {
  __$ProductItemEntityCopyWithImpl(
      _ProductItemEntity _value, $Res Function(_ProductItemEntity) _then)
      : super(_value, (v) => _then(v as _ProductItemEntity));

  @override
  _ProductItemEntity get _value => super._value as _ProductItemEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? oldPrice = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_ProductItemEntity(
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
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductItemEntity implements _ProductItemEntity {
  _$_ProductItemEntity(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.price,
      this.currency = '₽',
      this.oldPrice,
      required this.isLiked});

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
  final bool isLiked;

  @override
  String toString() {
    return 'ProductItemEntity(id: $id, name: $name, imageUrl: $imageUrl, price: $price, currency: $currency, oldPrice: $oldPrice, isLiked: $isLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductItemEntity &&
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
            (identical(other.isLiked, isLiked) ||
                const DeepCollectionEquality().equals(other.isLiked, isLiked)));
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
      const DeepCollectionEquality().hash(isLiked);

  @JsonKey(ignore: true)
  @override
  _$ProductItemEntityCopyWith<_ProductItemEntity> get copyWith =>
      __$ProductItemEntityCopyWithImpl<_ProductItemEntity>(this, _$identity);
}

abstract class _ProductItemEntity implements ProductItemEntity {
  factory _ProductItemEntity(
      {required String id,
      required String name,
      required String imageUrl,
      required double price,
      String currency,
      double? oldPrice,
      required bool isLiked}) = _$_ProductItemEntity;

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
  bool get isLiked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductItemEntityCopyWith<_ProductItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
