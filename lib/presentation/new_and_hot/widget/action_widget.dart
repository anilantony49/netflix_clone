import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:video_player/video_player.dart';

class ActionWidget extends StatefulWidget {
  const ActionWidget({
    super.key,
    required this.icon,
    required this.text,
    this.iconSize,
    this.textColor,
    this.height,
    this.textSize,
    this.playerController,
  });

  final String icon;
  final double? iconSize;
  final double? height;
  final double? textSize;
  final String text;
  final Color? textColor;
  final VideoPlayerController? playerController;

  @override
  State<ActionWidget> createState() => _ActionWidgetState();
}

class _ActionWidgetState extends State<ActionWidget> {
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
            child: PhysicalModel(
              color: Colors.transparent,
              elevation: 5,
              shadowColor: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.icon,
                width: screenWidth * widget.iconSize!,
                color: kWhiteColor,
              ),
            ),
          ),
          kHeight(screenHeight * (widget.height ?? 0.004)),
          Text(
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
