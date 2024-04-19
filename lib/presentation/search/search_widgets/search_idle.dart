import 'package:flutter/material.dart';

import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/search_widgets/title.dart';

class searchIdleWidget extends StatelessWidget {
  const searchIdleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const searchTilewidget(
          title: 'Top Searches',
        ),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final movie = idleList[index];
                return TopSearchItemTile(
                    title: movie.title ?? 'No Title Provided',
                    imageUrl: '$imageappendUrl${movie.posterPath}');
              },
              separatorBuilder: (context, index) => k25height,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchItemTile({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.37,
          height: 90,
          // color: Colors.red,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        kwidth,
        Expanded(
          child: Text(
            title,
            //  maxLines: 2,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const Icon(
          Icons.play_circle,
          color: Colors.grey,
          size: 35,
        )
      ],
    );
  }
}
