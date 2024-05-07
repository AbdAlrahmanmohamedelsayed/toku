// [Flutter]: material
import 'package:flutter/material.dart';
import 'package:toku/Components/item.dart';
import 'package:toku/models/Model_data.dart';

// ignore: must_be_immutable
class FamilyPage extends StatelessWidget {
  FamilyPage({super.key});
  // ignore: non_constant_identifier_names
  final List<Data> family = [
    Data(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojiisan',
      enName: 'Grand Father',
      sound: 'sounds/family_members/grand father.wav',
    ),
    Data(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sofu',
      enName: 'Grand Mother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    Data(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichi',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    Data(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Haha',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    Data(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    Data(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ana',
      enName: 'Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
    Data(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    Data(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imouto',
      enName: 'Younger Sister',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    Data(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
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
            'Family Page ',
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
          itemCount: family.length,
          itemBuilder: (BuildContext context, int index) {
            return Item(item: family[index]);
          },
        ));
  }
}
