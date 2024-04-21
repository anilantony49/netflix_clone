import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.height,
    required this.width,
    this.margin,
    this.angle,
    required this.imageList,
  });

  final double height;
  final double width;
  final EdgeInsetsGeometry? margin;
  final double? angle;
  final String imageList;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle! * pi / 100,
      child: Container(
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: CachedNetworkImage(
          imageUrl: imageList,
          imageBuilder: (context, imageProvider) => ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
          // placeholder: (context, url) => Shimmer(
          //   gradient: shimmerGradient,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(5),
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
