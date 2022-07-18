import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../widgets/global/header.dart';
import '../../widgets/my_courses/video_item.dart';

class CoursePlaylist extends StatelessWidget {
  const CoursePlaylist({Key? key}) : super(key: key);
  final List<String> videos = const [
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
  ];
  final bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(title: "Course Title", route: ""),
          Expanded(
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: VideoItem(
                videoPlayerController: VideoPlayerController.network(videos[0]),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * .5,
            child: Expanded(
              child: ListView.builder(
                  itemCount: videos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      value: isChecked,
                      title: const Text("video 1"),
                      subtitle: const Text("4 min"),
                      onChanged: (value) {},
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
