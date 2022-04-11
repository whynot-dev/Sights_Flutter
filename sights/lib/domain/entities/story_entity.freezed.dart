// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'story_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoryEntityTearOff {
  const _$StoryEntityTearOff();

  _StoryEntity call(
      {required int id,
      required StoryTitleFormatType storyTitleFormatType,
      String? title,
      String? description,
      required StoryMediaType storyMediaType,
      required StoryMediaType previewMediaType,
      required String storyUrl,
      required String previewUrl,
      Color? textColor,
      Color? backgroundColor,
      StoryButtonEntity? storyButtonEntity,
      Duration defaultDuration = const Duration(milliseconds: 5000),
      VideoPlayerController? videoPlayerController}) {
    return _StoryEntity(
      id: id,
      storyTitleFormatType: storyTitleFormatType,
      title: title,
      description: description,
      storyMediaType: storyMediaType,
      previewMediaType: previewMediaType,
      storyUrl: storyUrl,
      previewUrl: previewUrl,
      textColor: textColor,
      backgroundColor: backgroundColor,
      storyButtonEntity: storyButtonEntity,
      defaultDuration: defaultDuration,
      videoPlayerController: videoPlayerController,
    );
  }
}

/// @nodoc
const $StoryEntity = _$StoryEntityTearOff();

/// @nodoc
mixin _$StoryEntity {
  int get id => throw _privateConstructorUsedError;
  StoryTitleFormatType get storyTitleFormatType =>
      throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  StoryMediaType get storyMediaType => throw _privateConstructorUsedError;
  StoryMediaType get previewMediaType => throw _privateConstructorUsedError;
  String get storyUrl => throw _privateConstructorUsedError;
  String get previewUrl => throw _privateConstructorUsedError;
  Color? get textColor => throw _privateConstructorUsedError;
  Color? get backgroundColor => throw _privateConstructorUsedError;
  StoryButtonEntity? get storyButtonEntity =>
      throw _privateConstructorUsedError;
  Duration get defaultDuration => throw _privateConstructorUsedError;
  VideoPlayerController? get videoPlayerController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoryEntityCopyWith<StoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryEntityCopyWith<$Res> {
  factory $StoryEntityCopyWith(
          StoryEntity value, $Res Function(StoryEntity) then) =
      _$StoryEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      StoryTitleFormatType storyTitleFormatType,
      String? title,
      String? description,
      StoryMediaType storyMediaType,
      StoryMediaType previewMediaType,
      String storyUrl,
      String previewUrl,
      Color? textColor,
      Color? backgroundColor,
      StoryButtonEntity? storyButtonEntity,
      Duration defaultDuration,
      VideoPlayerController? videoPlayerController});
}

/// @nodoc
class _$StoryEntityCopyWithImpl<$Res> implements $StoryEntityCopyWith<$Res> {
  _$StoryEntityCopyWithImpl(this._value, this._then);

  final StoryEntity _value;
  // ignore: unused_field
  final $Res Function(StoryEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? storyTitleFormatType = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? storyMediaType = freezed,
    Object? previewMediaType = freezed,
    Object? storyUrl = freezed,
    Object? previewUrl = freezed,
    Object? textColor = freezed,
    Object? backgroundColor = freezed,
    Object? storyButtonEntity = freezed,
    Object? defaultDuration = freezed,
    Object? videoPlayerController = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storyTitleFormatType: storyTitleFormatType == freezed
          ? _value.storyTitleFormatType
          : storyTitleFormatType // ignore: cast_nullable_to_non_nullable
              as StoryTitleFormatType,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      storyMediaType: storyMediaType == freezed
          ? _value.storyMediaType
          : storyMediaType // ignore: cast_nullable_to_non_nullable
              as StoryMediaType,
      previewMediaType: previewMediaType == freezed
          ? _value.previewMediaType
          : previewMediaType // ignore: cast_nullable_to_non_nullable
              as StoryMediaType,
      storyUrl: storyUrl == freezed
          ? _value.storyUrl
          : storyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: previewUrl == freezed
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: textColor == freezed
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      storyButtonEntity: storyButtonEntity == freezed
          ? _value.storyButtonEntity
          : storyButtonEntity // ignore: cast_nullable_to_non_nullable
              as StoryButtonEntity?,
      defaultDuration: defaultDuration == freezed
          ? _value.defaultDuration
          : defaultDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      videoPlayerController: videoPlayerController == freezed
          ? _value.videoPlayerController
          : videoPlayerController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
    ));
  }
}

/// @nodoc
abstract class _$StoryEntityCopyWith<$Res>
    implements $StoryEntityCopyWith<$Res> {
  factory _$StoryEntityCopyWith(
          _StoryEntity value, $Res Function(_StoryEntity) then) =
      __$StoryEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      StoryTitleFormatType storyTitleFormatType,
      String? title,
      String? description,
      StoryMediaType storyMediaType,
      StoryMediaType previewMediaType,
      String storyUrl,
      String previewUrl,
      Color? textColor,
      Color? backgroundColor,
      StoryButtonEntity? storyButtonEntity,
      Duration defaultDuration,
      VideoPlayerController? videoPlayerController});
}

/// @nodoc
class __$StoryEntityCopyWithImpl<$Res> extends _$StoryEntityCopyWithImpl<$Res>
    implements _$StoryEntityCopyWith<$Res> {
  __$StoryEntityCopyWithImpl(
      _StoryEntity _value, $Res Function(_StoryEntity) _then)
      : super(_value, (v) => _then(v as _StoryEntity));

  @override
  _StoryEntity get _value => super._value as _StoryEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? storyTitleFormatType = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? storyMediaType = freezed,
    Object? previewMediaType = freezed,
    Object? storyUrl = freezed,
    Object? previewUrl = freezed,
    Object? textColor = freezed,
    Object? backgroundColor = freezed,
    Object? storyButtonEntity = freezed,
    Object? defaultDuration = freezed,
    Object? videoPlayerController = freezed,
  }) {
    return _then(_StoryEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storyTitleFormatType: storyTitleFormatType == freezed
          ? _value.storyTitleFormatType
          : storyTitleFormatType // ignore: cast_nullable_to_non_nullable
              as StoryTitleFormatType,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      storyMediaType: storyMediaType == freezed
          ? _value.storyMediaType
          : storyMediaType // ignore: cast_nullable_to_non_nullable
              as StoryMediaType,
      previewMediaType: previewMediaType == freezed
          ? _value.previewMediaType
          : previewMediaType // ignore: cast_nullable_to_non_nullable
              as StoryMediaType,
      storyUrl: storyUrl == freezed
          ? _value.storyUrl
          : storyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: previewUrl == freezed
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: textColor == freezed
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      storyButtonEntity: storyButtonEntity == freezed
          ? _value.storyButtonEntity
          : storyButtonEntity // ignore: cast_nullable_to_non_nullable
              as StoryButtonEntity?,
      defaultDuration: defaultDuration == freezed
          ? _value.defaultDuration
          : defaultDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      videoPlayerController: videoPlayerController == freezed
          ? _value.videoPlayerController
          : videoPlayerController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
    ));
  }
}

/// @nodoc

class _$_StoryEntity implements _StoryEntity {
  _$_StoryEntity(
      {required this.id,
      required this.storyTitleFormatType,
      this.title,
      this.description,
      required this.storyMediaType,
      required this.previewMediaType,
      required this.storyUrl,
      required this.previewUrl,
      this.textColor,
      this.backgroundColor,
      this.storyButtonEntity,
      this.defaultDuration = const Duration(milliseconds: 5000),
      this.videoPlayerController});

  @override
  final int id;
  @override
  final StoryTitleFormatType storyTitleFormatType;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final StoryMediaType storyMediaType;
  @override
  final StoryMediaType previewMediaType;
  @override
  final String storyUrl;
  @override
  final String previewUrl;
  @override
  final Color? textColor;
  @override
  final Color? backgroundColor;
  @override
  final StoryButtonEntity? storyButtonEntity;
  @JsonKey(defaultValue: const Duration(milliseconds: 5000))
  @override
  final Duration defaultDuration;
  @override
  final VideoPlayerController? videoPlayerController;

  @override
  String toString() {
    return 'StoryEntity(id: $id, storyTitleFormatType: $storyTitleFormatType, title: $title, description: $description, storyMediaType: $storyMediaType, previewMediaType: $previewMediaType, storyUrl: $storyUrl, previewUrl: $previewUrl, textColor: $textColor, backgroundColor: $backgroundColor, storyButtonEntity: $storyButtonEntity, defaultDuration: $defaultDuration, videoPlayerController: $videoPlayerController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoryEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.storyTitleFormatType, storyTitleFormatType) ||
                const DeepCollectionEquality().equals(
                    other.storyTitleFormatType, storyTitleFormatType)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.storyMediaType, storyMediaType) ||
                const DeepCollectionEquality()
                    .equals(other.storyMediaType, storyMediaType)) &&
            (identical(other.previewMediaType, previewMediaType) ||
                const DeepCollectionEquality()
                    .equals(other.previewMediaType, previewMediaType)) &&
            (identical(other.storyUrl, storyUrl) ||
                const DeepCollectionEquality()
                    .equals(other.storyUrl, storyUrl)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewUrl, previewUrl)) &&
            (identical(other.textColor, textColor) ||
                const DeepCollectionEquality()
                    .equals(other.textColor, textColor)) &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)) &&
            (identical(other.storyButtonEntity, storyButtonEntity) ||
                const DeepCollectionEquality()
                    .equals(other.storyButtonEntity, storyButtonEntity)) &&
            (identical(other.defaultDuration, defaultDuration) ||
                const DeepCollectionEquality()
                    .equals(other.defaultDuration, defaultDuration)) &&
            (identical(other.videoPlayerController, videoPlayerController) ||
                const DeepCollectionEquality().equals(
                    other.videoPlayerController, videoPlayerController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(storyTitleFormatType) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(storyMediaType) ^
      const DeepCollectionEquality().hash(previewMediaType) ^
      const DeepCollectionEquality().hash(storyUrl) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(textColor) ^
      const DeepCollectionEquality().hash(backgroundColor) ^
      const DeepCollectionEquality().hash(storyButtonEntity) ^
      const DeepCollectionEquality().hash(defaultDuration) ^
      const DeepCollectionEquality().hash(videoPlayerController);

  @JsonKey(ignore: true)
  @override
  _$StoryEntityCopyWith<_StoryEntity> get copyWith =>
      __$StoryEntityCopyWithImpl<_StoryEntity>(this, _$identity);
}

abstract class _StoryEntity implements StoryEntity {
  factory _StoryEntity(
      {required int id,
      required StoryTitleFormatType storyTitleFormatType,
      String? title,
      String? description,
      required StoryMediaType storyMediaType,
      required StoryMediaType previewMediaType,
      required String storyUrl,
      required String previewUrl,
      Color? textColor,
      Color? backgroundColor,
      StoryButtonEntity? storyButtonEntity,
      Duration defaultDuration,
      VideoPlayerController? videoPlayerController}) = _$_StoryEntity;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  StoryTitleFormatType get storyTitleFormatType =>
      throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  StoryMediaType get storyMediaType => throw _privateConstructorUsedError;
  @override
  StoryMediaType get previewMediaType => throw _privateConstructorUsedError;
  @override
  String get storyUrl => throw _privateConstructorUsedError;
  @override
  String get previewUrl => throw _privateConstructorUsedError;
  @override
  Color? get textColor => throw _privateConstructorUsedError;
  @override
  Color? get backgroundColor => throw _privateConstructorUsedError;
  @override
  StoryButtonEntity? get storyButtonEntity =>
      throw _privateConstructorUsedError;
  @override
  Duration get defaultDuration => throw _privateConstructorUsedError;
  @override
  VideoPlayerController? get videoPlayerController =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoryEntityCopyWith<_StoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
