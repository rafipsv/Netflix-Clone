// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix/json/coming_soon_json.dart';
import 'package:netflix/widgets/coming_soon_widget.dart';
import 'package:netflix/widgets/helper.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Helper.comingSoonAppBar,
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        height: size.height,
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return ComingSoonWidget(
              comingSoon: comingSoonJson,
              index: index,
            );
          }),
          itemCount: comingSoonJson.length,
        ),
      ),
    );
  }
}
