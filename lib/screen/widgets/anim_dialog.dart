import 'package:flutter/material.dart';
class AnimDialog extends StatelessWidget {
  const AnimDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        child: const Text("Open Dialog Animation"));
  }

  void _openAnimatedDialog(BuildContext context){
    showGeneralDialog(context: context,
        pageBuilder: (context, animation1, animation2){
      return Container();
        }
        );
  }
}
