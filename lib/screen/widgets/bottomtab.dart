import 'package:flutter/material.dart';
class BotTab extends StatefulWidget {
  const BotTab({super.key});

  @override
  State<BotTab> createState() => _BotTabState();
}

class _BotTabState extends State<BotTab> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Container(color: Colors.blue,),
    Container(color: Colors.yellow,),
    Container(color: Colors.black,),
    Container(color: Colors.indigo,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play"),
            BottomNavigationBarItem(icon: Icon(Icons.pause), label: "Pause"),
            BottomNavigationBarItem(icon: Icon(Icons.next_week_outlined), label: "Next"),
          ]),
    );
  }
}
