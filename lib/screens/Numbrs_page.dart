// [Flutter]: material
import 'package:flutter/material.dart';

import 'package:toku/Components/item.dart';
import 'package:toku/models/Number.dart';

// ignore: must_be_immutable
class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  // ignore: non_constant_identifier_names
  final Numbrs One = Numbrs(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'One');
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Item(number: One),
            Item(number: One),
            Item(number: One),
            Item(number: One),
            Item(number: One),
            Item(number: One),
            Item(number: One),
            Item(number: One),
            Item(number: One),
          ],
        ),
      ),
    );
  }
}
