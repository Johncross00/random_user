
import 'package:flutter/material.dart';
import '../widgets/build_grid_view.dart';
class PausePage extends StatelessWidget {
  const PausePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: buildGridView(context),
    );
  }
}