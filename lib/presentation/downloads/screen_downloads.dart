import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/downloads/widgets/screen_three.dart';
import 'package:netflix/presentation/downloads/widgets/section_two.dart';
import 'package:netflix/presentation/downloads/widgets/smart_downloads.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgets = [
    const SmartDownloadsWidget(),
    const SectionTwo(),
    const SectionThree(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(size.height * 0.4),
            child: const Appbarwidget(title: 'Downloads')),
        body: ListView.separated(
          itemBuilder: (context, index) => _widgets[index],
          separatorBuilder: (context, index) => kHeight(size.height * 0.07),
          itemCount: _widgets.length,
        ),
      ),
    );
  }
}
