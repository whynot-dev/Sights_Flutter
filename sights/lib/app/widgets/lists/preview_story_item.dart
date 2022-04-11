import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/loaders/circular_progress.dart';
import 'package:sights/domain/entities/story_entity.dart';
import 'package:sights/domain/enums/story_media_type.dart';
import 'package:sights/domain/enums/story_title_format_type.dart';
import 'package:sights/gen/assets.gen.dart';

class PreviewStoryItem extends StatefulWidget {
  PreviewStoryItem({
    required this.story,
    this.isCurrentStory = false,
    this.onPressed,
    this.fit = BoxFit.cover
  });

  final StoryEntity story;
  final bool isCurrentStory;
  final VoidCallback? onPressed;
  final BoxFit? fit;

  @override
  State<PreviewStoryItem> createState() => _PreviewStoryItemState();
}

class _PreviewStoryItemState extends State<PreviewStoryItem> {
  late double _volume;
  bool _videoIsPlaying = false;

  @override
  void initState() {
    if (widget.story.previewMediaType == StoryMediaType.video) {
      if (widget.isCurrentStory) {
        widget.story.videoPlayerController?.play();
      }

      widget.story.videoPlayerController?.addListener(_positionChanged);
      _volume = widget.story.videoPlayerController?.value.volume ?? 0;
      widget.story.videoPlayerController?.setVolume(0);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant PreviewStoryItem oldWidget) {
    if (widget.story.previewMediaType == StoryMediaType.video) {
      if (widget.isCurrentStory) {
        widget.story.videoPlayerController?.play();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  void _positionChanged() {
    _videoIsPlaying = widget.story.videoPlayerController?.value.position != Duration.zero;
    if (_videoIsPlaying) {
      widget.story.videoPlayerController?.removeListener(_positionChanged);
      setState(() {});
    }
  }

  @override
  void dispose() {
    widget.story.videoPlayerController?.removeListener(_positionChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          widget.onPressed?.call();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Stack(
              children: [
                widget.story.previewMediaType == StoryMediaType.image
                    ? Positioned.fill(child: _buildImage())
                    : Positioned.fill(child: _buildVideo()),
                Positioned.fill(child: _buildTitle()),
                widget.story.previewMediaType == StoryMediaType.video
                    ? Positioned.fill(
                        child: Container(
                          padding: const EdgeInsets.only(top: 24, right: 24),
                          alignment: Alignment.topRight,
                          child: _buildVolumeIcon(),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      );

  Widget _buildImage() => CachedNetworkImage(
        imageUrl: widget.story.previewUrl ?? '',
        fit: widget.fit,
      );

  Widget _buildVideo() => widget.story.videoPlayerController != null
      ? Stack(
          alignment: Alignment.center,
          children: [
            FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 45,
                height: MediaQuery.of(context).size.height * 0.5,
                child: AspectRatio(
                  child: VideoPlayer(widget.story.videoPlayerController!),
                  aspectRatio: widget.story.videoPlayerController!.value.aspectRatio,
                ),
              ),
            ),
            widget.isCurrentStory
                ? !_videoIsPlaying
                    ? _buildLoader()
                    : const SizedBox()
                : const SizedBox(),
          ],
        )
      : const SizedBox();

  Widget _buildLoader() => CircularProgress(
        size: 42,
        primaryColor: AppColors.accent,
      );

  Widget _buildTitle() => Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 24, top: 24),
        alignment: _getAlignmentForText(widget.story.storyTitleFormatType),
        child: Text(
          widget.story.title ?? '',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: AppColors.white),
        ),
      );

  Widget _buildVolumeIcon() => GestureDetector(
        onTap: () {
          if (_volume != 0) {
            _volume = widget.story.videoPlayerController?.value.volume ?? 0;
            widget.story.videoPlayerController?.setVolume(0);
          } else {
            widget.story.videoPlayerController?.setVolume(_volume);
          }
          setState(() {});
        },
        child: SvgPicture.asset(_volume != 0 ? Assets.images.noSound : Assets.images.noSound),
      );
}

Alignment _getAlignmentForText(StoryTitleFormatType type) {
//  switch (type) {
//    case StoryTitleFormatType.top:
//      return Alignment.topLeft;
//    case StoryTitleFormatType.center:
//      return Alignment.centerLeft;
//    case StoryTitleFormatType.bottom:
//      return Alignment.bottomLeft;
//  }
  return Alignment.bottomLeft;
}
