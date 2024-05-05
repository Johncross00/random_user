import 'package:flutter/material.dart';

GridView buildGridView(BuildContext context) {
  return GridView.count(
    crossAxisCount: 5,
    mainAxisSpacing: 5,
    crossAxisSpacing: 5,
    scrollDirection: Axis.vertical,
    children: List.generate(100, (index) {
      return Center(
        child: Text(
          'Item $index',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      );
    }),
  );
}