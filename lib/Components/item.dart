import 'package:flutter/material.dart';
import 'package:toku/Components/TextScreen.dart';
import 'package:toku/models/Number.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.number});
  final Numbrs number;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 0.5, color: Colors.red)),
      alignment: Alignment.center,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red.withOpacity(1),
                border: Border.all(color: Colors.white54, width: 3)),
            child: Image.asset(
              number.image,
              width: 100,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextPages(number.jpName),
              TextPages(number.enName),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.red,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
