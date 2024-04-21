import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.size,
      required this.iconSize,
      required this.buttonText,
      required this.icon});

  final Size size;
  final double iconSize;
  final String buttonText;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          icon,
          width: size.width * iconSize,
          color: Colors.white,
        ),
        kHeight(size.height * 0.004),
        Text(
          buttonText,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
