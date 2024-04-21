import 'package:flutter/material.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/widgets/listview_loading.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';


class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.size,
    required this.title,
    required this.movies,
    this.reversed = false,
  });

  final Size size;
  final String title;
  final Future<List<dynamic>> movies;
  final bool reversed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle(
            title: title,
          ),
          FutureBuilder(
            future: movies,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ErrorLoading(size: size);
              } else if (snapshot.hasData) {
                return LimitedBox(
                  maxHeight: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: _generateList(reversed, snapshot),
                  ),
                );
              } else {
                return ListViewLoading(size: size);
              }
            },
          ),
        ],
      ),
    );
  }

  List<Widget> _generateList(bool reversed, AsyncSnapshot snapshot) {
    List<Widget> generatedList = List.generate(
      snapshot.data!.length,
      (index) => MainCard(
        size: size,
        image: imageBaseUrl + snapshot.data![index].posterPath,
      ),
    );

    if (reversed) {
      return generatedList = generatedList.reversed.toList();
    }
    return generatedList;
  }
}
