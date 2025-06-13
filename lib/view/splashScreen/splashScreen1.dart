// import 'package:flutter/material.dart';
import 'package:project_management/consts/const.dart';
import 'package:video_player/video_player.dart';
import 'splashScreen2.dart';
class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset('assets/videos/logo.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();

        _controller.addListener(() {
          if (_controller.value.position >= _controller.value.duration &&
              !_controller.value.isPlaying) {
            // Prevent multiple triggers
            if (mounted) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => SplashScreen2()),
              );
            }
          }
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // optional, depending on your video
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: SizedBox(
              height: context.screenWidth*0.8,
              width: context.screenWidth*0.8,
              child: Center(
                child: _controller.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
                    : Container(), // Or splash image while loading
              ),
            ),
          ),
          ],
      ),
    );
  }
}
