import 'package:flutter/material.dart';

class SearchTilewidget extends StatelessWidget {
  final String title;
  const SearchTilewidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
