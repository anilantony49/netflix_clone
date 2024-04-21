import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 40, right: 40),
          width: double.infinity,
          // height: size.height * 0.04,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kButtonBlueColor,
            onPressed: () {},
            child: const Text(
              'Set up',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: kWhiteColor,
              ),
            ),
          ),
        ),
        kHeight(size.height * 0.01),
        SizedBox(
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kButtonWhiteColor,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(left: 2, right: 2),
              child: Text(
                'See What You Can Download',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: kBlackColor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
