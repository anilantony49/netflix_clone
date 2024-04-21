import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';


class HomeScreenAppbar extends StatelessWidget {
  const HomeScreenAppbar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        curve: Curves.easeInOut,
        duration: const Duration(seconds: 1),
        height: size.height * 0.12,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF000000),
              Color(0x00000000),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 10, top: 10),
              child: Row(
                children: [
                  Image.asset(logo),
                  const Spacer(),
                  SizedBox(
                    width: 25,
                    child: Image.asset(
                      screenCast,
                      color: Colors.white,
                    ),
                  ),
                  kWidth(
                      MediaQuery.of(context).size.height *
                          0.02),
                  SizedBox(
                    width: 25,
                    child: Image.asset(
                      profile,
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
            kHeight(15),
            const Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                Text('Series', style: kTextStyleHome),
                Text('Films', style: kTextStyleHome),
                Text('Categories', style: kTextStyleHome)
              ],
            )
          ],
        ),
      );
  }
}
