import 'package:flutter/material.dart';

class BotTab extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTap;
  const BotTab({super.key, required this.selectedIndex, required this.onTap});

  @override
  State<BotTab> createState() => _BotTabState();
}

class _BotTabState extends State<BotTab> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.selectedIndex,
        onTap: widget.onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play"),
          BottomNavigationBarItem(icon: Icon(Icons.pause), label: "Pause"),
          BottomNavigationBarItem(
              icon: Icon(Icons.next_week_outlined), label: "Next"),
        ]);
  }
}
