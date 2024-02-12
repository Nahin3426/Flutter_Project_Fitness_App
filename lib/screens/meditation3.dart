import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class meditationpage3 extends StatefulWidget {
  final int sessionNum;

  const meditationpage3({
    Key? key,
    required this.sessionNum,
  }) : super(key: key);

  @override
  _meditationpage3State createState() => _meditationpage3State();
}

class _meditationpage3State extends State<meditationpage3> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/meditationvideos/med3.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16 / 9, // Adjust as needed for your video's aspect ratio
      autoPlay: false,
      looping: false,
      allowedScreenSleep: false,
      // You can customize other ChewieController properties here
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Session ${widget.sessionNum} Details'),
        backgroundColor: Color(0xFFF2BEA1),
        centerTitle: true,
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? Chewie(
          controller: _chewieController,
        )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _chewieController.isPlaying
                ? _chewieController.pause()
                : _chewieController.play();
          });
        },
        child: Icon(
          _chewieController.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
