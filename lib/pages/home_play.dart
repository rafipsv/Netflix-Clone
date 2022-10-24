import 'package:flutter/material.dart';
import 'package:netflix/pages/video_details.dart';

class HomePlay extends StatelessWidget {
  const HomePlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: const [
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        GestureDetector(
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) {
                  return const VideoDetails(
                    videoUrl: "assets/videos/video_2.mp4",
                  );
                }),
              ),
            );
          }),
          child: Container(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Row(
              children: const [
                Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 27,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Play",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: const [
            Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
