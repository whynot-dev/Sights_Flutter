// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'document_part_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DocumentPartEntityTearOff {
  const _$DocumentPartEntityTearOff();

  _DocumentPartEntity call(
      {required ConfirmDocumentPart documentPart, required File file}) {
    return _DocumentPartEntity(
      documentPart: documentPart,
      file: file,
    );
  }
}

/// @nodoc
const $DocumentPartEntity = _$DocumentPartEntityTearOff();

/// @nodoc
mixin _$DocumentPartEntity {
  ConfirmDocumentPart get documentPart => throw _privateConstructorUsedError;
  File get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentPartEntityCopyWith<DocumentPartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentPartEntityCopyWith<$Res> {
  factory $DocumentPartEntityCopyWith(
          DocumentPartEntity value, $Res Function(DocumentPartEntity) then) =
      _$DocumentPartEntityCopyWithImpl<$Res>;
  $Res call({ConfirmDocumentPart documentPart, File file});
}

/// @nodoc
class _$DocumentPartEntityCopyWithImpl<$Res>
    implements $DocumentPartEntityCopyWith<$Res> {
  _$DocumentPartEntityCopyWithImpl(this._value, this._then);

  final DocumentPartEntity _value;
  // ignore: unused_field
  final $Res Function(DocumentPartEntity) _then;

  @override
  $Res call({
    Object? documentPart = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      documentPart: documentPart == freezed
          ? _value.documentPart
          : documentPart // ignore: cast_nullable_to_non_nullable
              as ConfirmDocumentPart,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
abstract class _$DocumentPartEntityCopyWith<$Res>
    implements $DocumentPartEntityCopyWith<$Res> {
  factory _$DocumentPartEntityCopyWith(
          _DocumentPartEntity value, $Res Function(_DocumentPartEntity) then) =
      __$DocumentPartEntityCopyWithImpl<$Res>;
  @override
  $Res call({ConfirmDocumentPart documentPart, File file});
}

/// @nodoc
class __$DocumentPartEntityCopyWithImpl<$Res>
    extends _$DocumentPartEntityCopyWithImpl<$Res>
    implements _$DocumentPartEntityCopyWith<$Res> {
  __$DocumentPartEntityCopyWithImpl(
      _DocumentPartEntity _value, $Res Function(_DocumentPartEntity) _then)
      : super(_value, (v) => _then(v as _DocumentPartEntity));

  @override
  _DocumentPartEntity get _value => super._value as _DocumentPartEntity;

  @override
  $Res call({
    Object? documentPart = freezed,
    Object? file = freezed,
  }) {
    return _then(_DocumentPartEntity(
      documentPart: documentPart == freezed
          ? _value.documentPart
          : documentPart // ignore: cast_nullable_to_non_nullable
              as ConfirmDocumentPart,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_DocumentPartEntity implements _DocumentPartEntity {
  const _$_DocumentPartEntity({required this.documentPart, required this.file});

  @override
  final ConfirmDocumentPart documentPart;
  @override
  final File file;

  @override
  String toString() {
    return 'DocumentPartEntity(documentPart: $documentPart, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DocumentPartEntity &&
            (identical(other.documentPart, documentPart) ||
                const DeepCollectionEquality()
                    .equals(other.documentPart, documentPart)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(documentPart) ^
      const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$DocumentPartEntityCopyWith<_DocumentPartEntity> get copyWith =>
      __$DocumentPartEntityCopyWithImpl<_DocumentPartEntity>(this, _$identity);
}

abstract class _DocumentPartEntity implements DocumentPartEntity {
  const factory _DocumentPartEntity(
      {required ConfirmDocumentPart documentPart,
      required File file}) = _$_DocumentPartEntity;

  @override
  ConfirmDocumentPart get documentPart => throw _privateConstructorUsedError;
  @override
  File get file => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DocumentPartEntityCopyWith<_DocumentPartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
