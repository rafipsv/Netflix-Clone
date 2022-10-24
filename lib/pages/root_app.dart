import 'package:flutter/material.dart';
import 'package:netflix/json/root_app_json.dart';
import 'package:netflix/widgets/helper.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selectedIndex = 0;
  void onChange(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
        selectedItemColor: const Color(0xffcc2b5e),
        selectedIconTheme: const IconThemeData(
          color: Color(0xffcc2b5e),
        ),
        selectedLabelStyle: const TextStyle(color: Color(0xffcc2b5e)),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              items[0]["icon"],
            ),
            label: items[0]["text"],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              items[1]["icon"],
            ),
            label: items[1]["text"],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              items[2]["icon"],
            ),
            label: items[2]["text"],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              items[3]["icon"],
            ),
            label: items[3]["text"],
          )
        ],
        onTap: (value) {
          onChange(value);
        },
      ),
    );
  }
}
