import 'package:flutter/material.dart';
import 'package:random_user/screen/widgets/bottomtab.dart';
import 'package:random_user/screen/widgets/drawer_but.dart';

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
            Flexible(
              flex: 1,
              child: ListView(
                children: <Widget>[
                  buildListTile(),
                  buildListTile(),
                  buildListTile(),
                  buildListTile(),
                  buildListTile(),
                  buildListTile(),
                  buildListTile(),
                  buildListTile(),
                  buildListTile(),
                  buildListTile(),
                  buildListTile(),
                  buildListTile(),
                ],
              ),
            ),
            const SizedBox(height: 15), // Espace de 15 pixels
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
                  Container(
                    width: 160,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160,
                    color: Colors.green,
                  ),
                  const AnimatedIcon(
                      icon: AnimatedIcons.arrow_menu,
                      progress: kAlwaysCompleteAnimation),
                  Container(
                    width: 160,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: ElevatedButton(onPressed: (){
                    _displayBottomSheet(context);
                  },
                      child: Text("Press to open")),
                ),
                color: Colors.deepPurple,
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 5,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                scrollDirection: Axis.vertical,
                children: List.generate(100, (index) {
                  return Center(
                    child: Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BotTab(),
      drawer: const DrawerBut(),
    );
  }

  ListTile buildListTile() {
    return const ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text("Example"),
    );
  }

  Future _displayBottomSheet(BuildContext context){
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.orange,
      context: context,
      builder: (context) => Container(
        height: 200,
      )
    );
  }
}
