import 'package:flutter/material.dart';

import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/search_widgets/title.dart';

class searchReasult extends StatelessWidget {
  const searchReasult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const searchTilewidget(title: 'Movies & Tv'),
            kheight,
            Expanded(
                child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 1.35,
              children: List.generate(
                20,
                (index) {
                  
                  return MainCard(imageUrl: '',);
                },
              ),  
            )),
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
