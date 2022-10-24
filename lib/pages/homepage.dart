import 'package:flutter/material.dart';
import 'package:netflix/json/home_json.dart';
import 'package:netflix/pages/home_films.dart';
import 'package:netflix/pages/home_play.dart';
import 'package:netflix/widgets/home_category.dart';
import 'package:netflix/widgets/home_label.dart';
import 'package:netflix/widgets/homepage_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.55,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/banner.webp",
                      ),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.55,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(0.1),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),
                    ),
                    Column(
                      children: const [
                        HomePageAppBar(),
                        HomeCategory(),
                        HomeLabel()
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const HomePlay(),
              const SizedBox(
                height: 50,
              ),
              const HomeFilms(
                label: "My List",
                filmList: mylist,
              ),
              const HomeFilms(
                label: "Popular Now",
                filmList: popularList,
              ),
              const HomeFilms(
                label: "Trending Now",
                filmList: trendingList,
              ),
              const HomeFilms(
                label: "Netflix Originals",
                filmList: originalList,
              ),
              const HomeFilms(
                label: "Animes",
                filmList: animeList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
