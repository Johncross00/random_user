import 'package:flutter/material.dart';

class BotTab extends StatefulWidget {
  const BotTab({super.key});

  @override
  State<BotTab> createState() => _BotTabState();
}

class _BotTabState extends State<BotTab> {
  int _selectedIndex = 0;
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
