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
      backgroundColor: Colors.cyanAccent,
        barrierColor: Colors.black.withOpacity(0.5),
        useSafeArea: true,
        elevation: 50,
        enableDrag: true,
        showDragHandle: true,
        context: context,
        builder: (context) => Container(
      height: 300,
    )
    );
  }

}
