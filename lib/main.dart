import 'package:flutter/material.dart';
import 'package:toku/screens/Home_Page.dart';

void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  TokuApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
