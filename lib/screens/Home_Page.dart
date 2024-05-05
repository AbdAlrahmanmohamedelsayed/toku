import 'package:flutter/material.dart';
import 'package:toku/Components/Category.dart';
import 'package:toku/screens/Colors_page.dart';
import 'package:toku/screens/Family_page.dart';
import 'package:toku/screens/Numbrs_page.dart';
import 'package:toku/screens/Phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff051525),
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(color: Colors.red, width: 0.5)),
        titleSpacing: 5,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/images/japn.png',
            width: 60,
          ),
        ),
        backgroundColor: const Color(0xff051525),
        title: const Text(
          'TOKU ',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              letterSpacing: 2),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.red,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.notifications,
            size: 30,
            color: Colors.red,
          ),
        ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          mainAxisSpacing: 5.0, // Spacing between rows
          crossAxisSpacing: 10.0, // Spacing between columns
          childAspectRatio: 1.0, // Ratio of width to height for each grid item
        ),
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return NumbersPage();
                },
              ));
            },
            text: 'Numbers',
            imageurl: 'assets/images/number.png',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return FamilyPage();
                },
              ));
            },
            text: 'Family',
            imageurl: 'assets/images/family.png',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ColorsPage();
                },
              ));
            },
            text: 'Colors',
            imageurl: 'assets/images/color.png',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PhrasesPage();
                },
              ));
            },
            text: 'Phrases',
            imageurl: 'assets/images/phrase.png',
          ),
        ],
      ),
    );
  }
}
