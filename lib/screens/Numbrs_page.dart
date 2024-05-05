// [Flutter]: material
import 'package:flutter/material.dart';

import 'package:toku/Components/item.dart';
import 'package:toku/models/Number.dart';

// ignore: must_be_immutable
class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  // ignore: non_constant_identifier_names
  final List<Numbers> num = [
    Numbers(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'One'),
    Numbers(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two'),
    Numbers(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three'),
    Numbers(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi or Yon',
        enName: 'Four'),
    Numbers(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five'),
    Numbers(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six'),
    Numbers(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Shichi or Nana',
        enName: 'Seven'),
    Numbers(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'Eight'),
    Numbers(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū or Ku',
        enName: 'Nine'),
    Numbers(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Jū',
        enName: 'Ten'),
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
        body: ListView.builder(
          itemCount: num.length,
          itemBuilder: (BuildContext context, int index) {
            return Item(number: num[index]);
          },
        ));
  }
}
