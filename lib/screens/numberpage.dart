
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:the_back/component/categorynum.dart';
import 'package:the_back/models/number.dart';


class NumberPage extends StatelessWidget{
  NumberPage({super.key});
  
  List<Number> numbers = [
    Number(
      image: 'assets/images/numbers/number_one.png', 
      jptext: 'ichi', 
      entext: 'one', 
      tapsound: 'sounds/numbers/number_one_sound.mp3', 
    ),
    Number(
      image: 'assets/images/numbers/number_two.png', 
      jptext: 'ni', 
      entext: 'two',
      tapsound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png', 
      jptext: 'san', 
      entext: 'three',
      tapsound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png', 
      jptext: 'shi', 
      entext: 'four',
      tapsound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png', 
      jptext: 'go', 
      entext: 'five',
      tapsound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png', 
      jptext: 'roku', 
      entext: 'six',
      tapsound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png', 
      jptext: 'sebun', 
      entext: 'seven',
      tapsound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png', 
      jptext: 'hachi', 
      entext: 'eight',
      tapsound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png', 
      jptext: 'ichi', 
      entext: 'nine',
      tapsound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png', 
      jptext: 'ichi', 
      entext: 'ten',
      tapsound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 116, 57, 36),
        title: const Text('Numbers'),
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