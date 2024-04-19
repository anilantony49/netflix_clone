import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widget/main_title.dart';
import 'package:netflix/presentation/main_page/home/number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key, required this.postersList,
  }) : super(key: key);
  final List<String> postersList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Maintitle(title: 'Top 10 Tv Shows in India Today'),
        ),
        // kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  postersList.length,
                  (index) => NumberCard(
                        index: index,
                        imageUrl:postersList[index],
                      ))),
        )
      ],
    );
  }
}
