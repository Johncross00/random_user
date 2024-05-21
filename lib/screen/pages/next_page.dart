
import 'package:flutter/material.dart';
import 'package:random_user/screen/widgets/anim_dialog.dart';
import '../widgets/buildListTile.dart';
class NextPage extends StatelessWidget {
  const NextPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: <Widget>[
              buildListTile(),
              buildListTile(),
              buildListTile(),
              buildListTile(),
              buildListTile(),
              Container(
                child: AnimDialog(),
              )
            ],
          ),
        ),

      ],
    );
  }
}