
import 'package:flutter/material.dart';
import '../widgets/buildListTile.dart';
class NextPage extends StatelessWidget {
  const NextPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}