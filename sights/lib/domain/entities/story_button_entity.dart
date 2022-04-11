import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/entities/network/story_button.dart';
import 'package:sights/domain/enums/story_button_type.dart';

class StoryButtonEntity {
  StoryButtonEntity({
    this.title,
    required this.url,
    required this.type,
    this.textColor,
    this.backgroundColor,
  });

  String? title;
  String url;
  StoryButtonType type;
  Color? textColor;
  Color? backgroundColor;

  factory StoryButtonEntity.fromResponse(StoryButton response) => StoryButtonEntity(
        title: response.title,
        url: response.url,
        type: _getStoryButtonType(response.type),
        textColor: AppColors.getColor(response.color),
        backgroundColor: AppColors.getColor(response.background),
      );
}

StoryButtonType _getStoryButtonType(String type) {
  switch (type) {
    case 'url':
      return StoryButtonType.url;
    case 'catalog':
      return StoryButtonType.catalog;
  }
  return StoryButtonType.url;
}


