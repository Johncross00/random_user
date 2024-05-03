import 'package:flutter/material.dart';
import 'package:random_user/screen/pages/home_page.dart';
import 'package:random_user/screen/widgets/bottom_tab.dart';
import 'package:random_user/screen/widgets/bottomtab.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BotTab(),
    );
  }
}
