
import 'package:the_back/component/item.dart';

class Number extends CategoryItem{
  Number({required this.image, 
  required this.jptext, 
  required this.entext, 
  required this.tapsound,
  });
  
  @override
  String image;
  @override
  String jptext;
  @override
  String entext;
  @override
  String tapsound;
}