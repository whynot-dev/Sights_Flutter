// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainItemEntityTearOff {
  const _$MainItemEntityTearOff();

  _MainItemEntity call(
      {required int id,
      String? name,
      required MainItemType type,
      String? position,
      required dynamic item}) {
    return _MainItemEntity(
      id: id,
      name: name,
      type: type,
      position: position,
      item: item,
    );
  }
}

/// @nodoc
const $MainItemEntity = _$MainItemEntityTearOff();

/// @nodoc
mixin _$MainItemEntity {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  MainItemType get type => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  dynamic get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainItemEntityCopyWith<MainItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainItemEntityCopyWith<$Res> {
  factory $MainItemEntityCopyWith(
          MainItemEntity value, $Res Function(MainItemEntity) then) =
      _$MainItemEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      MainItemType type,
      String? position,
      dynamic item});
}

/// @nodoc
class _$MainItemEntityCopyWithImpl<$Res>
    implements $MainItemEntityCopyWith<$Res> {
  _$MainItemEntityCopyWithImpl(this._value, this._then);

  final MainItemEntity _value;
  // ignore: unused_field
  final $Res Function(MainItemEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? position = freezed,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MainItemType,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$MainItemEntityCopyWith<$Res>
    implements $MainItemEntityCopyWith<$Res> {
  factory _$MainItemEntityCopyWith(
          _MainItemEntity value, $Res Function(_MainItemEntity) then) =
      __$MainItemEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      MainItemType type,
      String? position,
      dynamic item});
}

/// @nodoc
class __$MainItemEntityCopyWithImpl<$Res>
    extends _$MainItemEntityCopyWithImpl<$Res>
    implements _$MainItemEntityCopyWith<$Res> {
  __$MainItemEntityCopyWithImpl(
      _MainItemEntity _value, $Res Function(_MainItemEntity) _then)
      : super(_value, (v) => _then(v as _MainItemEntity));

  @override
  _MainItemEntity get _value => super._value as _MainItemEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? position = freezed,
    Object? item = freezed,
  }) {
    return _then(_MainItemEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MainItemType,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_MainItemEntity implements _MainItemEntity {
  _$_MainItemEntity(
      {required this.id,
      this.name,
      required this.type,
      this.position,
      required this.item});

  @override
  final int id;
  @override
  final String? name;
  @override
  final MainItemType type;
  @override
  final String? position;
  @override
  final dynamic item;

  @override
  String toString() {
    return 'MainItemEntity(id: $id, name: $name, type: $type, position: $position, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainItemEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$MainItemEntityCopyWith<_MainItemEntity> get copyWith =>
      __$MainItemEntityCopyWithImpl<_MainItemEntity>(this, _$identity);
}

abstract class _MainItemEntity implements MainItemEntity {
  factory _MainItemEntity(
      {required int id,
      String? name,
      required MainItemType type,
      String? position,
      required dynamic item}) = _$_MainItemEntity;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  MainItemType get type => throw _privateConstructorUsedError;
  @override
  String? get position => throw _privateConstructorUsedError;
  @override
  dynamic get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainItemEntityCopyWith<_MainItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
