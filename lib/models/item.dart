
import 'package:audioplayers/audioplayers.dart';

class CategoryItem {
  CategoryItem({
  this.image, 
  required this.jptext, 
  required this.entext, 
  required this.tapsound,
  });
  String? image;
  String jptext;
  String entext;
  String tapsound;

  playsound (){
    final player = AudioPlayer();
    player.play(AssetSource(tapsound));
  }
}
