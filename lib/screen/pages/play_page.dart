
import 'package:flutter/material.dart';
import 'package:random_user/screen/widgets/bottom_sheet.dart';
class PlayPage extends StatelessWidget {
  const PlayPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.deepPurple,
        child: const Center(
          child: BottomSheetBar(),
        ),
      ),
    );
  }
}