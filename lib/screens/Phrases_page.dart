// [Flutter]: material
import 'package:flutter/material.dart';
import 'package:toku/Components/item.dart';
import 'package:toku/models/Model_data.dart';

// ignore: must_be_immutable
class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  // ignore: non_constant_identifier_names
  final List<Data> Phrases = [
    Data(
      jpName: 'Anata no namae wa nandesuka',
      enName: 'What is Your Name',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    Data(
      jpName: 'Kimasu ka',
      enName: 'Are You Coming',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    Data(
      enName: 'yes Im Coming',
      jpName: 'Hai, kimasu',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
    Data(
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming Is Easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    Data(
      enName: 'I love Programming',
      jpName: 'Puroguramingu ga daisukidesu',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    Data(
      enName: 'where are you going',
      jpName: 'Doko ni iku no',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    Data(
      enName: 'How are you Feeling',
      jpName: 'Go kibun wa ikagadesu ka',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    Data(
      enName: 'I Love Anime',
      jpName: 'Watashi wa anime ga daisukidesu',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    Data(
      enName: 'Don\'t Forget To subscribe',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
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
            'Phrases Page ',
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
        body: ListView.separated(
          itemCount: Phrases.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemInfo(item: Phrases[index]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 15,
              thickness: 2,
              color: Colors.red,
            );
          },
        ));
  }
}
