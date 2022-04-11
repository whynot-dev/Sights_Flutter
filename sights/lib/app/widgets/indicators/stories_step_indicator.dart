import 'dart:async';

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:video_player/video_player.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/domain/entities/story_entity.dart';
import 'package:sights/domain/enums/story_media_type.dart';

class StoriesStepIndicator extends StatefulWidget {
  const StoriesStepIndicator({
    required this.countStories,
    required this.indexCurrentStory,
    required this.story,
    required this.widthOfStep,
    required this.widthOfDivider,
    this.controller,
  });

  final int countStories;
  final int indexCurrentStory;
  final double widthOfDivider;
  final double widthOfStep;
  final StoriesIndicatorController? controller;
  final StoryEntity story;

  @override
  _StoriesStepIndicatorState createState() => _StoriesStepIndicatorState();
}

class _StoriesStepIndicatorState extends State<StoriesStepIndicator> {
  VideoPlayerController? _videoPlayerController;
  Timer? _timer;
  int _currentProgress = 0;

  @override
  void initState() {
    _videoPlayerController = widget.story.videoPlayerController;
    _setUpControllerListeners();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant StoriesStepIndicator oldWidget) {
    _videoPlayerController = widget.story.videoPlayerController;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 4,
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: widget.countStories,
          itemBuilder: (BuildContext context, int index) => Container(
            width: widget.widthOfStep,
            height: 4,
            decoration: BoxDecoration(color: AppColors.white15, borderRadius: BorderRadius.circular(3)),
            child: (widget.indexCurrentStory > index)
                ? _buildFinishedStep(context)
                : (widget.indexCurrentStory == index)
                    ? _buildCurrentStep(context)
                    : const SizedBox(),
          ),
          separatorBuilder: (BuildContext context, int index) => SizedBox(width: widget.widthOfDivider),
        ),
      );

  Widget _buildCurrentStep(context) => Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: _currentProgress * widget.widthOfStep / 100,
          decoration: BoxDecoration(color: AppColors.accent, borderRadius: BorderRadius.circular(3)),
        ),
      );

  Widget _buildFinishedStep(BuildContext context) => Container(
    decoration: BoxDecoration(color: AppColors.accent, borderRadius: BorderRadius.circular(3)),
  );

  void _setUpControllerListeners() {
    widget.controller?.start = () {
      if (widget.story.storyMediaType == StoryMediaType.video) {
        if(_videoPlayerController != null){
          _startTimer(_videoPlayerController!.value.duration.inMilliseconds.toDouble());
        }
      } else
        _startTimer(widget.story.defaultDuration.inMilliseconds.toDouble());
    };
    widget.controller?.recovery = () {
      if (widget.story.storyMediaType == StoryMediaType.video) {
        if(_videoPlayerController != null){
          _recoveryTimer(_videoPlayerController!.value.duration.inMilliseconds.toDouble());
        }
      } else
        _recoveryTimer(widget.story.defaultDuration.inMilliseconds.toDouble());
    };
    widget.controller?.stop = () {
      _timer?.cancel();
    };
    widget.controller?.clear = () {
      _currentProgress = 0;
      _timer?.cancel();
    };
  }

  void _startTimer(double storyDuration) {
    _currentProgress = 0;
    _timer?.cancel();
    _timer = Timer.periodic(Duration(milliseconds: storyDuration ~/ 100), (timer) {
      if (_currentProgress < 100) {
        setState(() {
          _currentProgress += 1;
        });
      } else {
        _currentProgress = 0;
        _timer?.cancel();
      }
    });
  }

  void _recoveryTimer(double storyDuration) {
    _timer = Timer.periodic(Duration(milliseconds: storyDuration ~/ 100), (timer) {
      if (_currentProgress < 100) {
        setState(() {
          _currentProgress += 1;
        });
      } else {
        _currentProgress = 0;
        _timer?.cancel();
      }
    });
  }
}

class StoriesIndicatorController {
  StoriesIndicatorController({
    this.start,
    this.recovery,
    this.stop,
    this.clear,
  });

  VoidCallback? start;
  VoidCallback? recovery;
  VoidCallback? stop;
  VoidCallback? clear;
}
