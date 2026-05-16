import 'package:flutter/material.dart';
import 'package:tectok/domain/entites/video_post.dart';
import 'package:tectok/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            //VideoPlayer
            SizedBox.expand(
              child: Text('Video'), //TODO Widget Fullscreen,
            ),

            //Botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost), //TODO Wigdet Buttons
            ),
          ],
        );
      },
    );
  }
}
