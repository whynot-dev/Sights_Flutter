// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delivery_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeliveryEntityTearOff {
  const _$DeliveryEntityTearOff();

  _DeliveryEntity call(
      {required String title,
      required String icon,
      required String price,
      String? subTitle}) {
    return _DeliveryEntity(
      title: title,
      icon: icon,
      price: price,
      subTitle: subTitle,
    );
  }
}

/// @nodoc
const $DeliveryEntity = _$DeliveryEntityTearOff();

/// @nodoc
mixin _$DeliveryEntity {
  String get title => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get subTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryEntityCopyWith<DeliveryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryEntityCopyWith<$Res> {
  factory $DeliveryEntityCopyWith(
          DeliveryEntity value, $Res Function(DeliveryEntity) then) =
      _$DeliveryEntityCopyWithImpl<$Res>;
  $Res call({String title, String icon, String price, String? subTitle});
}

/// @nodoc
class _$DeliveryEntityCopyWithImpl<$Res>
    implements $DeliveryEntityCopyWith<$Res> {
  _$DeliveryEntityCopyWithImpl(this._value, this._then);

  final DeliveryEntity _value;
  // ignore: unused_field
  final $Res Function(DeliveryEntity) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? icon = freezed,
    Object? price = freezed,
    Object? subTitle = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryEntityCopyWith<$Res>
    implements $DeliveryEntityCopyWith<$Res> {
  factory _$DeliveryEntityCopyWith(
          _DeliveryEntity value, $Res Function(_DeliveryEntity) then) =
      __$DeliveryEntityCopyWithImpl<$Res>;
  @override
  $Res call({String title, String icon, String price, String? subTitle});
}

/// @nodoc
class __$DeliveryEntityCopyWithImpl<$Res>
    extends _$DeliveryEntityCopyWithImpl<$Res>
    implements _$DeliveryEntityCopyWith<$Res> {
  __$DeliveryEntityCopyWithImpl(
      _DeliveryEntity _value, $Res Function(_DeliveryEntity) _then)
      : super(_value, (v) => _then(v as _DeliveryEntity));

  @override
  _DeliveryEntity get _value => super._value as _DeliveryEntity;

  @override
  $Res call({
    Object? title = freezed,
    Object? icon = freezed,
    Object? price = freezed,
    Object? subTitle = freezed,
  }) {
    return _then(_DeliveryEntity(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DeliveryEntity implements _DeliveryEntity {
  _$_DeliveryEntity(
      {required this.title,
      required this.icon,
      required this.price,
      this.subTitle});

  @override
  final String title;
  @override
  final String icon;
  @override
  final String price;
  @override
  final String? subTitle;

  @override
  String toString() {
    return 'DeliveryEntity(title: $title, icon: $icon, price: $price, subTitle: $subTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryEntity &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.subTitle, subTitle) ||
                const DeepCollectionEquality()
                    .equals(other.subTitle, subTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(subTitle);

  @JsonKey(ignore: true)
  @override
  _$DeliveryEntityCopyWith<_DeliveryEntity> get copyWith =>
      __$DeliveryEntityCopyWithImpl<_DeliveryEntity>(this, _$identity);
}

abstract class _DeliveryEntity implements DeliveryEntity {
  factory _DeliveryEntity(
      {required String title,
      required String icon,
      required String price,
      String? subTitle}) = _$_DeliveryEntity;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  String get price => throw _privateConstructorUsedError;
  @override
  String? get subTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryEntityCopyWith<_DeliveryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
