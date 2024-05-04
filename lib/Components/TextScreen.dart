import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextPages extends StatelessWidget {
  String? text_content;
  TextPages(this.text_content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text_content',
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}
