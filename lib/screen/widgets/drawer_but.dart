import 'package:flutter/material.dart';

class DrawerBut extends StatelessWidget {
  const DrawerBut({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _buildDrawerHeader(),
          _buildDrawerHeader(),
          _buildListTile(
              icon: Icons.zoom_in,
              subtitle: 'Click to go to zoom',
              title: 'Zoom',
              isEnable: true),
          _buildListTile(
              icon: Icons.library_add,
              title: 'title',
              subtitle: 'subtitle',
              isEnable: true),
          _buildListTile(
              icon: Icons.nat,
              subtitle: 'Click to Nat',
              title: '',
              isEnable: false),
          const Divider(color: Colors.lightGreenAccent, thickness: 5.0),
          _buildListTile(
              icon: Icons.calendar_view_day,
              subtitle: 'Click to view the calendra',
              title: 'Calendar',
              isEnable: true),
        ],
      ),
    );
  }

  _buildListTile(
      {required IconData icon,
      required String title,
      required String subtitle,
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
