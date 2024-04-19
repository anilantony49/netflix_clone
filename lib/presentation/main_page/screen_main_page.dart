import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/main_page/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);
  final _pages = [
    ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    screenSearch(),
    screenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: indexChangeNotifier,
              builder: (BuildContext ctx, int index, Widget? _) {
                return _pages[index];
              }),
        ),
        bottomNavigationBar: const bottomNavigationBarWidget());
  }
}
