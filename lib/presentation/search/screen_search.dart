import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/services/api_services.dart';

import 'package:netflix/core/constants.dart';
import 'package:netflix/core/debounce/debounce.dart';
import 'package:netflix/domian/model/movies.dart';
import 'package:netflix/presentation/search/search_widgets/search_idle.dart';
import 'package:netflix/presentation/search/search_widgets/search_result.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  final TextEditingController searchController = TextEditingController();
  late Future<List<Movie>> popularSearches;
  // late Future<List<Series>> seriesList;
  final _debouncer = Debouncer(milliseconds: 1 * 1000);
  bool isTapped = false;

  @override
  void initState() {
    popularSearches = getAllMoviesList('');
    // seriesList = getAllSeriesList('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(.25),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                _debouncer.run(() {
                  setState(() {
                    popularSearches = getAllMoviesList(value);
                    // seriesList = getAllSeriesList(value);
                    // isTapped = true;
                  });
                });
              },
              onTap: () {
                setState(() {
                  isTapped = true;
                });
              },
            ),
            kheight,
            isTapped
                ? Expanded(
                    child: SearchReasult(
                    movieList: popularSearches,
                    // seriesList: seriesList,
                  ))
                : Expanded(
                    child: SearchIdleWidget(popularSearches: popularSearches))
            // Expanded(child: const searchReasult()) ,
          ],
        ),
      )),
    );
  }
}
