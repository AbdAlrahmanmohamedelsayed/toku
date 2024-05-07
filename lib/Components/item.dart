import 'package:flutter/material.dart';
import 'package:toku/Components/TextScreen.dart';
import 'package:toku/models/Model_data.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.item});
  final Data item;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 0.5, color: Colors.red)),
      alignment: Alignment.center,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red.withOpacity(1),
                border: Border.all(color: Colors.white, width: 1)),
            child: Image.asset(
              item.image!,
              width: 130,
            ),
          ),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  ItemInfo({super.key, required this.item});
  final Data item;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextPages(item.jpName),
                TextPages(item.enName),
              ],
            ),
          ),
          IconButton(
            splashColor: Colors.red,
            onPressed: () {
              item.PlaySound();
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
