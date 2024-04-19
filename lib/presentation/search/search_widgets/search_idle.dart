import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/domian/model/movies.dart';
import 'package:netflix/presentation/search/search_widgets/title.dart';

class searchIdleWidget extends StatelessWidget {
  const searchIdleWidget({
    Key? key,
    required this.popularSearches,
  }) : super(key: key);

  final Future<List<Movie>> popularSearches;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const searchTilewidget(
          title: 'Top Searches',
        ),
        kheight,
        FutureBuilder(
            future: popularSearches,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return SpinKitFadingCircle(
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: index.isEven ? Colors.red : Colors.green,
                      ),
                    );
                  },
                );
              } else if (snapshot.hasData) {
                return Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return TopSearchItemTile(
                        title: snapshot.data![index].title,
                        imageUrl:
                            imageBaseUrl + snapshot.data![index].backdropPath,
                      );
                    },
                    separatorBuilder: (context, index) => k25height,
                    itemCount: snapshot.data!.length,
                  ),
                );
              } else {
                return SpinKitFadingCircle(
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: index.isEven ? Colors.red : Colors.green,
                      ),
                    );
                  },
                );
              }
            })
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
