import 'package:flutter/material.dart';
import 'package:netflix/json/profile.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/logo.ico",
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.collections_bookmark_rounded,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  profileUrl,
                  fit: BoxFit.cover,
                  height: 26,
                  width: 26,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
