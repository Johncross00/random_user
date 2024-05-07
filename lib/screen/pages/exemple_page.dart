import 'package:flutter/material.dart';

import '../widgets/row_container.dart';
class ExemplePage extends StatefulWidget {

  const ExemplePage({super.key});

  @override
  State<ExemplePage> createState() => _ExemplePageState();
}

class _ExemplePageState extends State<ExemplePage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
