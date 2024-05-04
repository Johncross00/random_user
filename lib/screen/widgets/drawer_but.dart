import 'package:flutter/material.dart';

class DrawerBut extends StatelessWidget {
  const DrawerBut({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _buildDrawerHeader(),
          _buildListTile(
              icon: Icons.zoom_in,
              title: 'Zoom',
              isEnable: true),
          _buildListTile(
              icon: Icons.library_add,
              title: 'title',
              isEnable: true),
          _buildListTile(
              icon: Icons.nat,
              title: 'Nat',
              isEnable: true),
          const Divider(),
          _buildListTile(
              icon: Icons.calendar_view_day,
              title: 'Calendar',
              isEnable: true),
        ],
      ),
    );
  }

  _buildListTile(
      {required IconData icon,
      required String title,
       String? subtitle,
      required bool isEnable}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      enabled: isEnable,
    );
  }
}

_buildDrawerHeader() {
  return const DrawerHeader(
    child: SingleChildScrollView(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/spotify.jpeg"),
            radius: 40,
          ),
          SizedBox(
            height: 15,
          ),
          Text("SPOTIFY",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    ),
  );
}
