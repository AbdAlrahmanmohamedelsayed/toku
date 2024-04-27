import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.imageurl, this.text});
  String? imageurl;
  String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          width: 300,
          height: 100,
          child: Image.asset(
            '$imageurl',
            width: 200,
            height: 140,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          '$text',
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
        ),
      ],
    );
  }
}
