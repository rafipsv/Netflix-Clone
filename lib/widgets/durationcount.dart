import 'package:flutter/material.dart';

class DurationCount extends StatelessWidget {
  const DurationCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 2.5,
              width: MediaQuery.of(context).size.width- 45,
              color: Colors.grey,
            ),
            Container(
              height: 2.5,
              width: MediaQuery.of(context).size.width * 0.30,
              color: Colors.red,
            ),
          ],
        ),
      ],
    );
  }
}
