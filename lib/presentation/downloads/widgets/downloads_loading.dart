import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';


class DownloadsLoadingWidget extends StatelessWidget {
  const DownloadsLoadingWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: size.width * 0.30,
          backgroundColor: kGreyColor,
        ),
        _downloadsImage(
          angle: 10,
          height: size.height * 0.19,
          width: size.width * 0.31,
          margin: const EdgeInsets.only(left: 140, bottom: 5),
        ),
        _downloadsImage(
          angle: -10,
          height: size.height * 0.19,
          width: size.width * 0.31,
          margin: const EdgeInsets.only(right: 140, bottom: 5),
        ),
        _downloadsImage(
          angle: 0,
          height: size.height * 0.22,
          width: size.width * 0.31,
          margin: const EdgeInsets.only(right: 0, top: 20),
        ),
      ],
    );
  }

  Transform _downloadsImage({angle, margin, height, width}) {
    return Transform.rotate(
      angle: angle * pi / 100,
      child: Container(
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Center(
          child: CircularProgressIndicator(
           
          ),
        ),
      ),
    );
  }
}
