import 'package:flutter/material.dart';
import 'package:random_user/screen/pages/next_page.dart';
import 'package:random_user/screen/widgets/bottom_sheet.dart';
import 'package:random_user/screen/widgets/bottomtab.dart';
import 'package:random_user/screen/widgets/drawer_but.dart';

import '../widgets/build_grid_view.dart';
import '../widgets/row_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _visible = true;
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
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            const Flexible(
              flex: 1,
              child: NextPage(),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AnimatedOpacity(
                    opacity: _visible ? 1.0 : 0.0,
                    duration: const Duration(seconds: 2),
                    child: Container(
                      width: 160,
                      color: Colors.red,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _visible = !_visible;
                      });
                    },
                    child: const Icon(Icons.play_arrow),
                  ),
                  buildContainer(width: 140, color: Colors.orange),
                  buildContainer(width: 140, color: Colors.green),
                  const AnimatedIcon(
                      icon: AnimatedIcons.arrow_menu,
                      progress: kAlwaysCompleteAnimation),
                  buildContainer(width: 140, color: Colors.yellow),
                  buildContainer(width: 140, color: Colors.pink),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                child: const Center(
                  child: BottomSheetBar(),
                ),
              ),
            ),
            Expanded(
              child: buildGridView(context),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BotTab(),
      drawer: const DrawerBut(),
    );
  }
}
