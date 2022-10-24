// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class ComingSoonWidget extends StatelessWidget {
  final List comingSoon;
  final int index;
  const ComingSoonWidget(
      {super.key, required this.comingSoon, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.35,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                comingSoon[index]["img"],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        comingSoon[index]["duration"]
            ? Row(
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        height: 2.5,
                        width: size.width,
                        color: Colors.grey,
                      ),
                      Container(
                        height: 2.5,
                        width: size.width * 0.35,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              )
            : Container(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                comingSoon[index]["title_img"],
                width: 170,
              ),
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.notification_add_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Remind me",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Info",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 12,
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            comingSoon[index]['date'],
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            comingSoon[index]['title'],
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 5),
          child: Text(
            comingSoon[index]['description'],
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, right: 5),
          child: Text(
            comingSoon[index]['type'],
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
