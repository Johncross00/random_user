import 'package:flutter/material.dart';
class AnimDialog extends StatelessWidget {
  const AnimDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          _openAnimatedDialog(context);
        },
        child: const Text("Open Dialog Animation"));
  }

  void _openAnimatedDialog(BuildContext context){
    showGeneralDialog(context: context,
        transitionDuration: const Duration(milliseconds: 400),
        barrierColor: Colors.black87.withOpacity(.5),
        barrierLabel: "",
        pageBuilder: (context, animation1, animation2){
      return Container();
        },
      transitionBuilder: (context, a1, a2, widget){
      return ScaleTransition(
        scale: Tween<double>(begin: 0.5, end: 1.0).animate(a1),
        child: FadeTransition(
          opacity: Tween<double>(begin:0.5, end:1.0).animate(a1),
          child: AlertDialog(
            title: Text("Hello here"),
            content: Text("I'm Kwaza waza"),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide.none,
            ),
          ),
        ),
      );
      }
        );
  }
}
