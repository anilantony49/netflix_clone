import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/background_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';
import 'package:netflix/presentation/widgets/numbertitle_card.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, bool index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  print(direction);
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }

                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        const BackgroundCard(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              MainCardTitle(
                                  title: 'Released in the past year',
                                  posterList: [''].sublist(0, 10)),
                              kheight,
                              MainCardTitle(
                                  title: 'Trending Now',
                                  posterList: [''].sublist(0, 10)),
                              kheight,
                              NumberTitleCard(
                                postersList: [''].sublist(0, 10),
                              ),
                              kheight,
                              MainCardTitle(
                                  title: 'Tense Dramas',
                                  posterList: [''].sublist(0, 10)),
                              kheight,
                              MainCardTitle(
                                  title: 'South Indian Cinima',
                                  posterList: [''].sublist(0, 10)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            child: Container(
                              width: double.infinity,
                              height: 90,
                              color: Colors.black.withOpacity(.8),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        "https://i.pinimg.com/originals/75/5a/b3/755ab365fbaed60c05bb3312a78edccf.jpg",
                                        //  color:Colors.red,
                                        width: 80,
                                        height: 60,
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.cast,
                                        color:
                                            Color.fromARGB(255, 230, 225, 225),
                                        size: 30,
                                      ),
                                      kwidth,
                                      Container(
                                        width: 30,
                                        height: 30,
                                        color: Colors.white,
                                      ),
                                      kwidth
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Tv Shows',
                                        style: khomeTextStle,
                                      ),
                                      Text('Movies', style: khomeTextStle),
                                      Text('Categories', style: khomeTextStle),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        : kheight,
                  ],
                ),
              );
            }));
  }
}
