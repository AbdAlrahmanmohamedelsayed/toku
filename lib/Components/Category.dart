// ignore: material.dart
import 'package:flutter/material.dart';

// ignore: Category, must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.imageurl, this.text, this.onTap});
  String? imageurl;
  String? text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.red,
              width: 3,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              width: 300,
              height: 100,
              child: Image.asset(
                '$imageurl',
                width: 300,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              '$text',
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
