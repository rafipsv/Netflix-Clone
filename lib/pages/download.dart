// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix/pages/root_app.dart';
import 'package:netflix/widgets/helper.dart';

class Download extends StatelessWidget {
  const Download({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Helper.downloadAppBar,
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(163, 66, 64, 64),
              ),
              child: Helper.downloadBar,
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Container(
              padding: const EdgeInsets.all(35),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(163, 66, 64, 64),
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.download,
                size: 90,
                color: Color.fromARGB(161, 153, 148, 148),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Never be without Netflix",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 40, left: 40),
              child: Text(
                "Download shows and movies so you'll never be without something to watch even when you're offline",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return const RootPage();
                    }),
                  ),
                );
              }),
              child: Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                width: size.width * 0.8,
                color: Colors.white,
                child: const Text(
                  "See What You Can Download",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
