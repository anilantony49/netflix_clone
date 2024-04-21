import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/new_and_hot/widget/action_widget.dart';

class EveryWatchCard extends StatelessWidget {
  const EveryWatchCard({
    super.key,
    required this.image,
    required this.title,
    required this.overview,
  });

  final String image;
  final String title;
  final String overview;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight(10),
          Image.asset(seriesLogo),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          kHeight(10),
          Text(
            overview,
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 14,
              color: Colors.grey.shade600,
            ),
          ),
          kHeight(30),
          _newAndHotMainImage(size, image),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                const Spacer(),
                ActionWidget(
                  icon: fastLaughShare,
                  iconSize: 0.05,
                  text: 'Share',
                  textSize: 13,
                  height: 0.01,
                  textColor: Colors.grey.shade500,
                ),
                kWidth(20),
                ActionWidget(
                  icon: fastLaughAdd,
                  iconSize: 0.05,
                  text: 'My List',
                  textSize: 13,
                  height: 0.01,
                  textColor: Colors.grey.shade500,
                ),
                kWidth(25),
                ActionWidget(
                  icon: fastLaughPlay,
                  iconSize: 0.05,
                  text: 'Play',
                  textSize: 13,
                  height: 0.01,
                  textColor: Colors.grey.shade500,
                )
              ],
            ),
          ),
          kHeight(10),
        ],
      ),
    );
  }

  SizedBox _newAndHotMainImage(Size size, String image) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: image,
            imageBuilder: (context, imageProvider) => ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image(
                image: imageProvider,
                fit: BoxFit.cover,
                width: size.width,
                height: size.height,
              ),
            ),
            placeholder: (context, url) => const Center(child: CircularProgressIndicator())
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Image.asset(
              logo,
              width: 16,
            ),
          ),
        ],
      ),
    );
  }
}
