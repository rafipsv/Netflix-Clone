// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix/json/profile.dart';
import 'package:netflix/pages/coming_soon.dart';
import 'package:netflix/pages/download.dart';
import 'package:netflix/pages/homepage.dart';
import 'package:netflix/pages/search.dart';

List<Widget> screens = <Widget>[
  const HomePage(),
  const ComingSoon(),
  const Search(),
  const Download(),
];

class Helper {
  static final comingSoonAppBar = AppBar(
    backgroundColor: Colors.black,
    centerTitle: false,
    title: const Text(
      "Coming Soon",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.collections_bookmark,
          color: Colors.white,
          size: 25,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          profileUrl,
          fit: BoxFit.cover,
          height: 25,
          width: 25,
        ),
      ),
      const SizedBox(
        width: 5,
      )
    ],
  );
  static final downloadAppBar = AppBar(
    backgroundColor: Colors.black,
    centerTitle: false,
    title: const Text(
      "My Downloads",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.collections_bookmark,
          color: Colors.white,
          size: 25,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          profileUrl,
          fit: BoxFit.cover,
          height: 25,
          width: 25,
        ),
      ),
      const SizedBox(
        width: 5,
      )
    ],
  );
  static final downloadBar = Row(
    children: const [
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Icon(
          Icons.info_outline,
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        "Smart Downloads",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        "ON",
        style: TextStyle(
          color: Color.fromARGB(255, 24, 175, 245),
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  );
  static final detailsAppBar = AppBar(
    backgroundColor: Colors.black,
    centerTitle: false,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.collections_bookmark,
          color: Colors.white,
          size: 25,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          profileUrl,
          fit: BoxFit.cover,
          height: 25,
          width: 25,
        ),
      ),
      const SizedBox(
        width: 5,
      )
    ],
  );
  static final videoPreview = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Preview",
        style: TextStyle(
          color: Colors.white.withOpacity(0.9),
          fontSize: 15,
        ),
      ),
      const Icon(
        Icons.volume_mute,
        color: Colors.white,
        size: 25,
      ),
    ],
  );
  static final videoTitle = Text(
    "Age of Samuria: Battle for Japan",
    style: TextStyle(
        height: 1.5,
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white),
  );
  static final videoDetails = Row(
    children: [
      const Text(
        "New",
        style: TextStyle(color: Colors.greenAccent, fontSize: 16),
      ),
      const SizedBox(
        width: 17,
      ),
      const Text(
        "2021",
        style: TextStyle(color: Colors.grey, fontSize: 16),
      ),
      const SizedBox(
        width: 17,
      ),
      Container(
        padding: const EdgeInsets.all(3.5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.grey,
        ),
        child: const Text(
          "18+",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(
        width: 17,
      ),
      const Text(
        "1 Season",
        style: TextStyle(color: Colors.grey, fontSize: 16),
      ),
      const SizedBox(
        width: 17,
      ),
      Container(
        padding: const EdgeInsets.all(3.5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.black,
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: const Text(
          "HD",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
  static final seasonName = Text(
    "S1:E1 The Rise Of Nobunaga",
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
  );
}
