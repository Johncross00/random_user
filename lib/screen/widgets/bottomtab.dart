import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/next_page.dart';
import '../pages/pause_page.dart';
import '../pages/play_page.dart';

class BotTab extends StatefulWidget {
  const BotTab({super.key});

  @override
  State<BotTab> createState() => _BotTabState();
}

class _BotTabState extends State<BotTab> {
  int _selectedIndex = 0;
  final _pages = [
      const HomePage(),
      const PlayPage(),
      const PausePage(),
      const NextPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play"),
          BottomNavigationBarItem(icon: Icon(Icons.pause), label: "Pause"),
          BottomNavigationBarItem(
              icon: Icon(Icons.next_week_outlined), label: "Next"),
        ]);
  }
}
