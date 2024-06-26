import 'package:flutter/material.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/fast_laugh/widget/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(imageList.length, (index) {
                  return VideoListItem(index: index);
                }))));
  }
}
