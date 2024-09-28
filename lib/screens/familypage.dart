
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:the_back/component/categorynum.dart';
import 'package:the_back/models/number.dart';


class Familypage extends StatelessWidget{
  Familypage({super.key});
  
  List<Number> numbers = [
    Number(
      image: 'assets/images/family_members/family_daughter.png', 
      jptext: 'ichi', 
      entext: 'one', 
      tapsound: 'sounds/numbers/number_one_sound.mp3', 
    ),
    Number(
      image: 'assets/images/family_members/family_father.png', 
      jptext: 'ni', 
      entext: 'two',
      tapsound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Number(
      image: 'assets/images/family_members/family_grandfather.png', 
      jptext: 'san', 
      entext: 'three',
      tapsound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Number(
      image: 'assets/images/family_members/family_grandmother.png', 
      jptext: 'shi', 
      entext: 'four',
      tapsound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Number(
      image: 'assets/images/family_members/family_older_brother.png', 
      jptext: 'go', 
      entext: 'five',
      tapsound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Number(
      image: 'assets/images/family_members/family_older_sister.png', 
      jptext: 'roku', 
      entext: 'six',
      tapsound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Number(
      image: 'assets/images/family_members/family_son.png', 
      jptext: 'sebun', 
      entext: 'seven',
      tapsound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Number(
      image: 'assets/images/family_members/family_mother.png', 
      jptext: 'hachi', 
      entext: 'eight',
      tapsound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Number(
      image: 'assets/images/family_members/family_younger_brother.png', 
      jptext: 'ichi', 
      entext: 'nine',
      tapsound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Number(
      image: 'assets/images/family_members/family_younger_sister.png', 
      jptext: 'ichi', 
      entext: 'ten',
      tapsound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 99, 39),
        title: const Text('Family Members'),
      ),
      body: ListView.separated(
        itemCount: numbers.length,
        itemBuilder: (context, int index) {  
          return Categorynum(numbers[index]);
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