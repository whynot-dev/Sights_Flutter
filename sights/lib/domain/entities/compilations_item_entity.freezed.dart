// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'compilations_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompilationsItemEntityTearOff {
  const _$CompilationsItemEntityTearOff();

  _CompilationsItemEntity call(
      {required int id,
      required String name,
      required CompilationsItemType type,
      required List<ProductsSectionEntity> compilation}) {
    return _CompilationsItemEntity(
      id: id,
      name: name,
      type: type,
      compilation: compilation,
    );
  }
}

/// @nodoc
const $CompilationsItemEntity = _$CompilationsItemEntityTearOff();

/// @nodoc
mixin _$CompilationsItemEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CompilationsItemType get type => throw _privateConstructorUsedError;
  List<ProductsSectionEntity> get compilation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompilationsItemEntityCopyWith<CompilationsItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompilationsItemEntityCopyWith<$Res> {
  factory $CompilationsItemEntityCopyWith(CompilationsItemEntity value,
          $Res Function(CompilationsItemEntity) then) =
      _$CompilationsItemEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      CompilationsItemType type,
      List<ProductsSectionEntity> compilation});
}

/// @nodoc
class _$CompilationsItemEntityCopyWithImpl<$Res>
    implements $CompilationsItemEntityCopyWith<$Res> {
  _$CompilationsItemEntityCopyWithImpl(this._value, this._then);

  final CompilationsItemEntity _value;
  // ignore: unused_field
  final $Res Function(CompilationsItemEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? compilation = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CompilationsItemType,
      compilation: compilation == freezed
          ? _value.compilation
          : compilation // ignore: cast_nullable_to_non_nullable
              as List<ProductsSectionEntity>,
    ));
  }
}

/// @nodoc
abstract class _$CompilationsItemEntityCopyWith<$Res>
    implements $CompilationsItemEntityCopyWith<$Res> {
  factory _$CompilationsItemEntityCopyWith(_CompilationsItemEntity value,
          $Res Function(_CompilationsItemEntity) then) =
      __$CompilationsItemEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      CompilationsItemType type,
      List<ProductsSectionEntity> compilation});
}

/// @nodoc
class __$CompilationsItemEntityCopyWithImpl<$Res>
    extends _$CompilationsItemEntityCopyWithImpl<$Res>
    implements _$CompilationsItemEntityCopyWith<$Res> {
  __$CompilationsItemEntityCopyWithImpl(_CompilationsItemEntity _value,
      $Res Function(_CompilationsItemEntity) _then)
      : super(_value, (v) => _then(v as _CompilationsItemEntity));

  @override
  _CompilationsItemEntity get _value => super._value as _CompilationsItemEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? compilation = freezed,
  }) {
    return _then(_CompilationsItemEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CompilationsItemType,
      compilation: compilation == freezed
          ? _value.compilation
          : compilation // ignore: cast_nullable_to_non_nullable
              as List<ProductsSectionEntity>,
    ));
  }
}

/// @nodoc

class _$_CompilationsItemEntity implements _CompilationsItemEntity {
  _$_CompilationsItemEntity(
      {required this.id,
      required this.name,
      required this.type,
      required this.compilation});

  @override
  final int id;
  @override
  final String name;
  @override
  final CompilationsItemType type;
  @override
  final List<ProductsSectionEntity> compilation;

  @override
  String toString() {
    return 'CompilationsItemEntity(id: $id, name: $name, type: $type, compilation: $compilation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompilationsItemEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.compilation, compilation) ||
                const DeepCollectionEquality()
                    .equals(other.compilation, compilation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(compilation);

  @JsonKey(ignore: true)
  @override
  _$CompilationsItemEntityCopyWith<_CompilationsItemEntity> get copyWith =>
      __$CompilationsItemEntityCopyWithImpl<_CompilationsItemEntity>(
          this, _$identity);
}

abstract class _CompilationsItemEntity implements CompilationsItemEntity {
  factory _CompilationsItemEntity(
          {required int id,
          required String name,
          required CompilationsItemType type,
          required List<ProductsSectionEntity> compilation}) =
      _$_CompilationsItemEntity;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  CompilationsItemType get type => throw _privateConstructorUsedError;
  @override
  List<ProductsSectionEntity> get compilation =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompilationsItemEntityCopyWith<_CompilationsItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
