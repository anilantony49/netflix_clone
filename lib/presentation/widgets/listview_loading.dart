import 'package:flutter/material.dart';

class ListViewLoading extends StatelessWidget {
  const ListViewLoading({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10,
          (index) => Container(
            margin: const EdgeInsets.only(right: 10),
            width: size.width * 0.35,
            height: size.height * 0.23,
            child: const Center(child: CircularProgressIndicator())
          ),
        ),
      ),
    );
  }
}

class ErrorLoading extends StatelessWidget {
  const ErrorLoading({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10,
          (index) => Container(
            margin: const EdgeInsets.only(right: 10),
            width: size.width * 0.35,
            height: size.height * 0.23,
            child: const Center(child: CircularProgressIndicator())
          ),
        ),
      ),
    );
  }
}
