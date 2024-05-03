import 'package:flutter/material.dart';
import 'package:random_user/screen/widgets/bottomtab.dart';
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
      body: 
      Container(
        color: Colors.grey,
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text("Example"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15), // Espace de 15 pixels
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AnimatedOpacity(
                      opacity: _visible? 1.0 : 0.0,
                      duration: Duration(seconds: 2),
                      child: Container(
                        width: 160,
                        color: Colors.red,
                      ),
                    ),
                    FloatingActionButton(onPressed: (){
                      setState(() {
                        _visible = !_visible;
                      });
                    },child: Icon(Icons.play_arrow),),
                    Container(
                      width: 160,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 160,
                      color: Colors.green,
                    ),
                    AnimatedIcon(icon: AnimatedIcons.arrow_menu, progress: kAlwaysCompleteAnimation),
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
            ),
            Expanded(
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
            Expanded(
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 5,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                scrollDirection: Axis.vertical,
                // Generate 100 widgets that display their index in the List.
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
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      //     BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
      //   ],
      // )
      bottomNavigationBar: BotTab(),
    );
  }
}
