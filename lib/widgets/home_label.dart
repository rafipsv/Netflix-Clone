// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomeLabel extends StatelessWidget {
  const HomeLabel({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.43,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            "assets/images/title_img.webp",
            height: size.height * 0.15,
            width: size.width * 0.75,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Exiting - Sci-Fi Drama - Sci-Fi Adventure",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
