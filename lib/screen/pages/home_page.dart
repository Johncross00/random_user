import 'package:flutter/material.dart';
import 'package:random_user/screen/pages/exemple_page.dart';
import 'package:random_user/screen/pages/next_page.dart';
import 'package:random_user/screen/pages/pause_page.dart';
import 'package:random_user/screen/pages/play_page.dart';
import 'package:random_user/screen/widgets/bottomtab.dart';
import 'package:random_user/screen/widgets/drawer_but.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Users Generation",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const <Widget>[
          ExemplePage(),
          PlayPage(),
          PausePage(),
          NextPage(),
        ],
      ),
      bottomNavigationBar: BotTab(
        selectedIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
      ),
      drawer: const DrawerBut(),
    );
  }
}
