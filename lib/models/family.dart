
import 'package:the_back/component/item.dart';

class Family extends CategoryItem{
  Family({required this.image, 
  required this.jptext, 
  required this.entext, 
  required this.tapsound,
  required this.word
  });
  String word;
  @override
  String image;
  @override
  String jptext;
  @override
  String entext;
  @override
  String tapsound;
}