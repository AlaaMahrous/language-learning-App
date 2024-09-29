
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:the_back/component/screenscategory.dart';
import 'package:the_back/models/item.dart';


class ColorPage extends StatelessWidget{
  ColorPage({super.key});
  
  List<CategoryItem> colorlist = [
    CategoryItem(
      image: 'assets/images/colors/color_black.png', 
      jptext: 'ichi', 
      entext: 'black', 
      tapsound: 'sounds/colors/black.wav', 
    ),
    CategoryItem(
      image: 'assets/images/colors/color_brown.png', 
      jptext: 'ni', 
      entext: 'brown',
      tapsound: 'sounds/colors/brown.wav',
    ),
    CategoryItem(
      image: 'assets/images/colors/color_dusty_yellow.png', 
      jptext: 'san', 
      entext: 'dusty yellow',
      tapsound: 'sounds/colors/dusty yellow.wav',
    ),
    CategoryItem(
      image: 'assets/images/colors/color_gray.png', 
      jptext: 'shi', 
      entext: 'gray',
      tapsound: 'sounds/colors/gray.wav',
    ),
    CategoryItem(
      image: 'assets/images/colors/color_green.png', 
      jptext: 'go', 
      entext: 'green',
      tapsound: 'sounds/colors/green.wav',
    ),
    CategoryItem(
      image: 'assets/images/colors/color_red.png', 
      jptext: 'roku', 
      entext: 'red',
      tapsound: 'sounds/colors/red.wav',
    ),
    CategoryItem(
      image: 'assets/images/colors/color_white.png', 
      jptext: 'sebun', 
      entext: 'white',
      tapsound: 'sounds/colors/white.wav',
    ),
    CategoryItem(
      image: 'assets/images/colors/yellow.png', 
      jptext: 'hachi', 
      entext: 'yellow',
      tapsound: 'sounds/colors/yellow.wav',
    ),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 116, 57, 36),
        title: const Text('Colors'),
      ),
      body: ListView.separated(
        itemCount: colorlist.length,
        itemBuilder: (context, int index) {  
          return Categorynum(colorlist[index]);
        },
        separatorBuilder: (BuildContext context, int index) { 
          return const Divider(
            height: 1,
            thickness: 1,
          );
        },
      ),
    );
  }
}