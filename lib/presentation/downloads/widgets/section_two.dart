import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/domian/model/movies.dart';
import 'package:netflix/presentation/downloads/widgets/download_image.dart';
import 'package:netflix/presentation/downloads/widgets/downloads_loading.dart';
import 'package:netflix/services/api_services.dart';

class SectionTwo extends StatefulWidget {
  const SectionTwo({super.key});

  @override
  State<SectionTwo> createState() => _SectionTwoState();
}

class _SectionTwoState extends State<SectionTwo> {
  late Future<List<Movie>> trending;

  @override
  void initState() {
    trending = getAllTrending();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Center(
          child: Text(
            'Indroducing Downloads for You',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(50, size.height * 0.03, 50, 0),
          child: const Text(
            "We'll download a personalised selection of \nfilms and programmes for you, so there's \nalways something to watch on your \ndevice",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w100,
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.32,
          child: FutureBuilder(
              future: trending,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child:CircularProgressIndicator()
                  );
                } else if (snapshot.hasData) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: size.width * 0.30,
                        backgroundColor: kGreyColor,
                      ),
                      DownloadsImageWidget(
                        height: size.height * 0.19,
                        width: size.width * 0.31,
                        angle: 10,
                        margin: const EdgeInsets.only(left: 140, bottom: 5),
                        imageList: imageBaseUrl + snapshot.data![4].posterPath,
                      ),
                      DownloadsImageWidget(
                        height: size.height * 0.19,
                        width: size.width * 0.31,
                        angle: -10,
                        margin: const EdgeInsets.only(right: 140, bottom: 5),
                        imageList: imageBaseUrl + snapshot.data![5].posterPath,
                      ),
                      DownloadsImageWidget(
                        height: size.height * 0.22,
                        width: size.width * 0.31,
                        angle: 0,
                        margin: const EdgeInsets.only(right: 0, top: 20),
                        imageList: imageBaseUrl + snapshot.data![7].posterPath,
                      ),
                    ],
                  );
                } else {
                  return DownloadsLoadingWidget(size: size);
                }
              }),
        )
      ],
    );
  }
}
