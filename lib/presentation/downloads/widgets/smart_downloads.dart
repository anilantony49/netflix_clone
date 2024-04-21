import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';

class SmartDownloadsWidget extends StatelessWidget {
  const SmartDownloadsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.02),
      child: Row(
        children: [
          kWidth(size.width * 0.014),
          SizedBox(
            width: 23,
            child: Image.asset(
              setting,
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          kWidth(size.width * 0.014),
          const Text(
            'Smart Downloads',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}