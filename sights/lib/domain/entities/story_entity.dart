import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/entities/network/story.dart';
import 'package:sights/domain/entities/story_button_entity.dart';
import 'package:sights/domain/enums/story_button_type.dart';
import 'package:sights/domain/enums/story_media_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/domain/enums/story_title_format_type.dart';

part 'story_entity.freezed.dart';

@freezed
class StoryEntity with _$StoryEntity {
  factory StoryEntity({
    required int id,
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
    @Default(Duration(milliseconds: 5000)) Duration defaultDuration,
    VideoPlayerController? videoPlayerController,
  }) = _StoryEntity;

  factory StoryEntity.fromResponse(Story response) => StoryEntity(
        id: response.id,
        storyTitleFormatType: _getStoryTitleFormatType(response.format),
        title: response.title,
        description: response.description,
        storyMediaType: _getStoryMediaType(response.story.type),
        previewMediaType: _getStoryMediaType(response.preview.type),
        storyUrl: response.story.path,
        previewUrl: response.preview.path,
        textColor: AppColors.getColor(response.color),
        backgroundColor: AppColors.getColor(response.background),
        storyButtonEntity: StoryButtonEntity.fromResponse(response.button),
        videoPlayerController: _getVideoPlayerController(
          _getStoryMediaType(response.preview.type),
          response.preview.path,
        ),
      );
}

StoryTitleFormatType _getStoryTitleFormatType(String type) {
  switch (type) {
    case 'down':
      return StoryTitleFormatType.bottom;
    case 'top':
      return StoryTitleFormatType.top;
    case 'center':
      return StoryTitleFormatType.center;
  }
  return StoryTitleFormatType.bottom;
}

StoryMediaType _getStoryMediaType(String? type) {
  switch (type) {
    case 'image/png':
      return StoryMediaType.image;
    case 'video/mp4':
      return StoryMediaType.video;
  }
  return StoryMediaType.none;
}

VideoPlayerController? _getVideoPlayerController(StoryMediaType type, String url) {
  if (type == StoryMediaType.video) {
    return VideoPlayerController.network(url);
  }
  return null;
}
