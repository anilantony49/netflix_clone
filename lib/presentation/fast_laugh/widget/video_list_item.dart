import 'package:flutter/material.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/widgets/video_action_widget.dart';
import 'package:video_player/video_player.dart';

class VideoListItem extends StatefulWidget {
  const VideoListItem({super.key, required this.index});

  final int index;

  @override
  State<VideoListItem> createState() => _VideoListItemState();
}

class _VideoListItemState extends State<VideoListItem> {
  VideoPlayerController? playerController;
  bool isVolumeOn = true;

  @override
  void initState() {
    super.initState();
    setState(() {
      playerController =
          VideoPlayerController.networkUrl(Uri.parse(videoList[widget.index]));
    });

    playerController!.initialize();
    playerController!.play();
    playerController!.setVolume(4);
    playerController!.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    playerController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: SizedBox(
            width: playerController!.value.size.width,
            height: playerController!.value.size.height,
            child: VideoPlayer(playerController!),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.black,
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          isVolumeOn == false
                              ? playerController!.setVolume(4)
                              : playerController!.setVolume(0);
                          isVolumeOn = !isVolumeOn;
                        });
                      },
                      child: isVolumeOn
                          ? Image.asset(
                              fastLaughVolume,
                              color: Colors.white,
                              width: 20,
                            )
                          : Image.asset(
                              fastLaughVolumeMute,
                              color: Colors.white,
                              width: 20,
                            )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: Image.network(
                        imageList[widget.index],
                        fit: BoxFit.cover,
                      ).image,
                    ),
                    VideoActionWidget(
                      icon: fastLaughEmoji,
                      icon2: fastLaughEmoji,
                      iconSize: 0.07,
                      text: 'LOL',
                      text2: 'LOL',
                      playerController: playerController,
                    ),
                    VideoActionWidget(
                      icon: fastLaughAdd,
                      icon2: fastLaughAdd,
                      iconSize: 0.04,
                      text: 'My List',
                      text2: 'My List',
                      playerController: playerController,
                    ),
                    VideoActionWidget(
                      icon: fastLaughShare,
                      icon2: fastLaughShare,
                      iconSize: 0.05,
                      text: 'Share',
                      text2: 'Share',
                      playerController: playerController,
                    ),
                    VideoActionWidget(
                      icon: fastLaughPlay,
                      icon2: fastLaughPause,
                      iconSize: 0.05,
                      text: 'Play',
                      text2: 'Pause',
                      playerController: playerController,
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
