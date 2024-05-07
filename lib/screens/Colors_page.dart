// [Flutter]: material
import 'package:flutter/material.dart';
import 'package:toku/Components/item.dart';
import 'package:toku/models/Model_data.dart';

// ignore: must_be_immutable
class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});
  // ignore: non_constant_identifier_names
  final List<Data> color = [
    Data(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'Black',
      sound: 'sounds/colors/black.wav',
    ),
    Data(
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
    Data(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      sound: 'sounds/colors/green.wav',
    ),
    Data(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      sound: 'sounds/colors/red.wav',
    ),
    Data(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Kusunda Kiiro',
      enName: 'Dusty Yellow',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    Data(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'white',
      sound: 'sounds/colors/white.wav',
    ),
    Data(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Haiiro',
      enName: 'Gray',
      sound: 'sounds/colors/gray.wav',
    ),
    Data(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff051525),
        appBar: AppBar(
          shape: const Border(bottom: BorderSide(color: Colors.red, width: 1)),
          titleSpacing: 5,
          backgroundColor: const Color(0xff051525),
          leading: const BackButton(
            color: Colors.red,
          ),
          title: const Text(
            'Colors Page ',
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
        body: ListView.builder(
          itemCount: color.length,
          itemBuilder: (BuildContext context, int index) {
            return Item(item: color[index]);
          },
        ));
  }
}
