import 'package:flutter/material.dart';
class BottomSheetBar extends StatelessWidget {
  const BottomSheetBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          _displayBottomSheet(context);
        },
        child: const Text("Bottom Sheet"));
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.black,
        barrierColor: Colors.lightGreenAccent.withOpacity(0.5),
        context: context,
        builder: (context) => Container(
      height: 500,
    )
    );
  }

}
