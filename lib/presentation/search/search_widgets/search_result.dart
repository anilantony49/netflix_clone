import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/domian/model/movies.dart';
import 'package:netflix/presentation/search/search_widgets/title.dart';

class SearchReasult extends StatelessWidget {
  const SearchReasult({
    Key? key,
    required this.movieList,
  }) : super(key: key);
  final Future<List<Movie>> movieList;
  // final Future<List<Series>> seriesList;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchTilewidget(title: 'Movies & Tv'),
            kheight,
            FutureBuilder(
                future: movieList,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasData) {
                    // int length =
                    //     snapshot.data![0].length + snapshot.data![1].length;
                    List<dynamic> movies = snapshot.data!;
                    // List<dynamic> series = snapshot.data![1];
                    return movies.isNotEmpty
                        ? Expanded(
                            child: GridView.count(
                            crossAxisCount: 3,
                            shrinkWrap: true,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1 / 1.35,
                            children: List.generate(
                              movies.length,
                              (index) {
                                if (index < movies.length) {
                                  return MainCard(
                                    imageUrl:
                                        imageBaseUrl + movies[index].posterPath,
                                  );
                                } else {
                                  int seriesIndex = index - movies.length;
                                  return MainCard(
                                    imageUrl: imageBaseUrl +
                                        movies[seriesIndex].posterPath,
                                  );
                                }
                              },
                            ),
                          ))
                        : const Align(
                            child: Text(
                            'No results found!!!',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ));
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
          ],
        ));
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  const MainCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.red,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            )));
  }
}
