
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:the_back/component/phrasecategory.dart';
import 'package:the_back/models/item.dart';


class Phrasespage extends StatelessWidget{
  Phrasespage({super.key});
  
  List<CategoryItem> phraselist = [
    CategoryItem(
      jptext: 'ichi', 
      entext: 'black', 
      tapsound: 'sounds/colors/black.wav', 
    ),
    CategoryItem(
      jptext: 'ni', 
      entext: 'brown',
      tapsound: 'sounds/colors/brown.wav',
    ),
    CategoryItem(
      jptext: 'san', 
      entext: 'dusty yellow',
      tapsound: 'sounds/colors/dusty yellow.wav',
    ),
    CategoryItem(
      jptext: 'shi', 
      entext: 'gray',
      tapsound: 'sounds/colors/gray.wav',
    ),
    CategoryItem(
      jptext: 'go', 
      entext: 'green',
      tapsound: 'sounds/colors/green.wav',
    ),
    CategoryItem(
      jptext: 'roku', 
      entext: 'red',
      tapsound: 'sounds/colors/red.wav',
    ),
    CategoryItem(
      jptext: 'sebun', 
      entext: 'white',
      tapsound: 'sounds/colors/white.wav',
    ),
    CategoryItem(
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
        title: const Text('Phrases'),
      ),
      body: ListView.separated(
        itemCount: phraselist.length,
        itemBuilder: (context, int index) {  
          return Phrasecategory(phraselist[index]);
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