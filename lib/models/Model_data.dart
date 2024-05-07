import 'package:audioplayers/audioplayers.dart';

class Data {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
  Data(
      {this.image,
      required this.jpName,
      required this.enName,
      required this.sound});
  PlaySound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
