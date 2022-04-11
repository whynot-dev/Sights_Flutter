import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/app/widgets/indicators/stories_step_indicator.dart';
import 'package:sights/app/widgets/loaders/circular_progress.dart';
import 'package:sights/domain/entities/story_entity.dart';
import 'package:sights/domain/enums/story_media_type.dart';
import 'package:sights/domain/enums/story_title_format_type.dart';

class StoriesCard extends StatefulWidget {
  StoriesCard({
    required this.story,
    required this.storiesIndicatorController,
    this.onPreviousClicked,
    this.onNextClicked,
    this.onPointerDown,
    this.onPointerUp,
    this.onButtonPressed,
    this.isCurrentStory = false,
    this.isFirstStory = false,
    this.isLastStory = false,
  });

  final StoryEntity story;
  final StoriesIndicatorController storiesIndicatorController;
  final VoidCallback? onPreviousClicked;
  final VoidCallback? onNextClicked;
  final VoidCallback? onPointerDown;
  final VoidCallback? onPointerUp;
  final VoidCallback? onButtonPressed;
  final bool isCurrentStory;
  final bool isFirstStory;
  final bool isLastStory;

  @override
  State<StoriesCard> createState() => _StoriesCardState();
}

class _StoriesCardState extends State<StoriesCard> {
  late StoriesIndicatorController _storiesIndicatorController;
  VideoPlayerController? _videoController;
  bool _shortPressed = true;
  bool _videoIsPlaying = false;

  @override
  void initState() {
    _storiesIndicatorController = widget.storiesIndicatorController;
    if (widget.story.storyMediaType == StoryMediaType.video && widget.isCurrentStory) {
      _videoController = widget.story.videoPlayerController;
      if (_videoController != null) {
        _videoController?.play();
        _videoController?.addListener(_positionChangedListener);
        _storiesIndicatorController.start?.call();
      }
    } else {
      _storiesIndicatorController.start?.call();
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant StoriesCard oldWidget) {
    _storiesIndicatorController = widget.storiesIndicatorController;
    if (widget.story.storyMediaType == StoryMediaType.video && widget.isCurrentStory) {
      _videoController = widget.story.videoPlayerController;
      if (_videoController != null) {
        _videoController?.play();
        _videoController?.addListener(_positionChangedListener);
        _storiesIndicatorController.start!();
      }
    } else {
      _storiesIndicatorController.start?.call();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _videoController?.removeListener(_positionChangedListener);
    super.dispose();
  }

  void _positionChangedListener() {
    _videoIsPlaying = _videoController?.value.position != Duration.zero;
    if (_videoIsPlaying) {
      _videoController?.removeListener(_positionChangedListener);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          _shortPressed = true;
          _videoController?.pause();
          _videoController?.seekTo(Duration.zero);
        },
        onTapUp: (TapUpDetails) {
          _onTapDown(context, TapUpDetails);
        },
        onTapDown: (TapDownDetails) {
          widget.onPointerDown?.call();
        },
        onLongPressStart: (LongPressStartDetails) {
          _shortPressed = false;
        },
        onLongPressEnd: (LongPressEndDetails) {
          widget.onPointerUp?.call();
          _shortPressed = true;
        },
        child: Stack(
          children: [
            _buildBody(),
            _buildTextAndButton(),
          ],
        ),
      );

  Widget _buildBody() => widget.story.storyMediaType == StoryMediaType.image ? _buildImage() : _buildVideo();

  Widget _buildTextAndButton() => Padding(
        padding: EdgeInsets.only(
          bottom: Platform.isIOS ? 40 : 40 + MediaQuery.of(context).padding.bottom,
          left: 16,
          right: 16,
          top: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: _getMainAxisAlignment(widget.story.storyTitleFormatType),
          children: [
            if (_getMainAxisAlignment(widget.story.storyTitleFormatType) == MainAxisAlignment.center) const Spacer(),
            _buildTitleAndSubTitle(),
            if (_getMainAxisAlignment(widget.story.storyTitleFormatType) != MainAxisAlignment.end) const Spacer(),
            const SizedBox(height: 32),
            if (widget.story.storyButtonEntity != null) _buildButton(),
          ],
        ),
      );

  Widget _buildTitleAndSubTitle() => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          if (widget.story.description != null) const SizedBox(height: 8),
          if (widget.story.description != null) _buildSubTitle(),
        ],
      );

  Widget _buildTitle() => Padding(
        padding: const EdgeInsets.only(right: 56),
        child: Text(
          widget.story.title ?? '',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: widget.story.textColor ?? AppColors.white),
        ),
      );

  Widget _buildSubTitle() => Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Text(
          widget.story.description ?? '',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: widget.story.textColor ?? AppColors.white),
        ),
      );

  Widget _buildVideo() => Stack(
        alignment: Alignment.center,
        children: [
          _videoIsPlaying && _videoController != null
              ? SizedBox(
                  width: double.infinity,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height -
                          MediaQuery.of(context).viewInsets.top -
                          MediaQuery.of(context).viewInsets.bottom -
                          40,
                      width: MediaQuery.of(context).size.width,
                      child: AspectRatio(
                        aspectRatio: _videoController!.value.aspectRatio,
                        child: VideoPlayer(_videoController!),
                      ),
                    ),
                  ),
                )
              : const SizedBox.expand(),
          !_videoIsPlaying ? _buildLoader() : const SizedBox(),
        ],
      );

  Widget _buildLoader() => CircularProgress(size: 42, primaryColor: AppColors.accent);

  Widget _buildImage() => CachedNetworkImage(imageUrl: widget.story.storyUrl, fit: BoxFit.fill, width: double.infinity);

  Widget _buildButton() => DefaultButton(
        text: widget.story.storyButtonEntity?.title ?? '',
        color: widget.story.storyButtonEntity?.backgroundColor ?? AppColors.white,
        textColor: widget.story.storyButtonEntity?.textColor ?? AppColors.onAccent,
        onPressed: () {
          widget.onButtonPressed?.call();
        },
      );

  void _onTapDown(context, TapUpDetails details) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double tapPosition = details.globalPosition.dx;

    if (_shortPressed) {
      if (tapPosition < screenWidth / 3) {
        return widget.onPreviousClicked?.call();
      } else {
        return widget.onNextClicked?.call();
      }
    }
  }
}

MainAxisAlignment _getMainAxisAlignment(StoryTitleFormatType type) {
  switch (type) {
    case StoryTitleFormatType.top:
      return MainAxisAlignment.start;
    case StoryTitleFormatType.center:
      return MainAxisAlignment.center;
    case StoryTitleFormatType.bottom:
      return MainAxisAlignment.end;
  }
  return MainAxisAlignment.end;
}
