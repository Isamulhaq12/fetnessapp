import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

  final FlickManager flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 16/9,
          child: FlickVideoPlayer(flickManager: flickManager,),
        ),
      ),
    );
  }
}
