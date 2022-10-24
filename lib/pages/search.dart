// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix/json/search_json.dart';
import 'package:netflix/pages/video_details.dart';
import 'package:netflix/widgets/searchbar.dart';
import 'package:netflix/widgets/searched_item.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.04,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: SearchBar(),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 30),
                  child: Text(
                    "Top Searches",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: List.generate(
                    searchJson.length,
                    (index) => GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) {
                              return const VideoDetails(
                                videoUrl: "assets/videos/video_1.mp4",
                              );
                            }),
                          ),
                        );
                      }),
                      child: SearchedItems(
                        searched: searchJson,
                        index: index,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
