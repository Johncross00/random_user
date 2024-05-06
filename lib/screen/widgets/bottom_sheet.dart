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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(90), top: Radius.circular(90)),
            side: BorderSide(color: Colors.red, width: 1)),
        context: context,
        builder: (context) => Container(
      height: 300,
    )
    );
  }

}
