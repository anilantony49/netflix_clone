import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:video_player/video_player.dart';

class VideoActionWidget extends StatefulWidget {
  const VideoActionWidget({
    super.key,
    required this.icon,
    required this.icon2,
    required this.text,
    required this.text2,
    this.iconSize,
    this.textColor,
    this.height,
    this.textSize,
    this.playerController,
  });

  final String icon;
  final String icon2;
  final double? iconSize;
  final double? height;
  final double? textSize;
  final String text;
  final String text2;
  final Color? textColor;
  final VideoPlayerController? playerController;

  @override
  State<VideoActionWidget> createState() => _VideoActionWidgetState();
}

class _VideoActionWidgetState extends State<VideoActionWidget> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.03,
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                if (widget.playerController!.value.isPlaying) {
                  widget.playerController!.pause();
                } else {
                  widget.playerController!.play();
                }
              });
            },
            child: PhysicalModel(
              color: Colors.transparent,
              elevation: 5,
              shadowColor: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
              child: widget.playerController!.value.isPlaying
                  ? Image.asset(
                      widget.icon2,
                      width: screenWidth * widget.iconSize!,
                      color: kWhiteColor,
                    )
                  : Image.asset(
                      widget.icon,
                      width: screenWidth * widget.iconSize!,
                      color: kWhiteColor,
                    ),
            ),
          ),
          kHeight(screenHeight * (widget.height ?? 0.004)),
          widget.playerController!.value.isPlaying
              ? Text(
                  widget.text2,
                  style: TextStyle(
                    fontSize: widget.textSize ?? 11,
                    color: widget.textColor ?? kWhiteColor,
                  ),
                )
              : Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: widget.textSize ?? 11,
                    color: widget.textColor ?? kWhiteColor,
                  ),
                )
        ],
      ),
    );
  }
}
