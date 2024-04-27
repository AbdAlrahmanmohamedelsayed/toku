import 'package:flutter/material.dart';
import 'package:toku/Components/Category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff051525),
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(color: Colors.red, width: 1)),
        titleSpacing: 3,
        leadingWidth: 30,
        leading: Image.asset(
          'assets/images/japn.png',
        ),
        backgroundColor: const Color(0xff051525),
        title: const Text(
          'TOKU ',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              letterSpacing: 2),
        ),
        actions: [
          Image.asset(
            'assets/images/dictionary_8462156.png',
            width: 40,
          ),
          Icon(
            Icons.notifications,
            size: 30,
            color: Colors.red,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Category(
            text: 'Numbers',
            imageurl: 'assets/images/number.png',
          ),
          Category(
            text: 'Family Members',
            imageurl: 'assets/images/family.png',
          ),
          Category(
            text: 'Colors',
            imageurl: 'assets/images/color.png',
          ),
          Category(
            text: 'Phrases',
            imageurl: 'assets/images/phrase.png',
          ),
        ],
      ),
    );
  }
}
