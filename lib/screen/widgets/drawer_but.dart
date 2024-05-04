import 'package:flutter/material.dart';
class DrawerBut extends StatelessWidget {
  const DrawerBut({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
        child: Column(
          children: [
            Text("THE HEADER")
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
