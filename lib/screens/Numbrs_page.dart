import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff051525),
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(color: Colors.red, width: 0.5)),
        titleSpacing: 5,
        backgroundColor: const Color(0xff051525),
        leading: BackButton(
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
    );
  }
}
