import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/Components/TextScreen.dart';
import 'package:toku/models/Number.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.item});
  final Numbers item;
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
                border: Border.all(color: Colors.white, width: 1)),
            child: Image.asset(
              item.image,
              width: 130,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextPages(item.jpName),
              TextPages(item.enName),
            ],
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(item.sound));
            },
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
