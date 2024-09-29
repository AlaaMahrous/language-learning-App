
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:the_back/component/screenscategory.dart';
import 'package:the_back/models/item.dart';


class Familypage extends StatelessWidget{
  Familypage({super.key});
  
  List<CategoryItem> family = [
    CategoryItem(
      image: 'assets/images/family_members/family_daughter.png', 
      jptext: 'ichi', 
      entext: 'daughter', 
      tapsound: 'sounds/family_members/daughter.wav', 
    ),
    CategoryItem(
      image: 'assets/images/family_members/family_father.png', 
      jptext: 'ni', 
      entext: 'father',
      tapsound: 'sounds/family_members/father.wav',
    ),
    CategoryItem(
      image: 'assets/images/family_members/family_grandfather.png', 
      jptext: 'san', 
      entext: 'grandfather',
      tapsound: 'sounds/family_members/grand father.wav',
    ),
    CategoryItem(
      image: 'assets/images/family_members/family_grandmother.png', 
      jptext: 'shi', 
      entext: 'grandmother',
      tapsound: 'sounds/family_members/grand mother.wav',
    ),
    CategoryItem(
      image: 'assets/images/family_members/family_older_brother.png', 
      jptext: 'go', 
      entext: 'older brother',
      tapsound: 'sounds/family_members/older bother.wav',
    ),
    CategoryItem(
      image: 'assets/images/family_members/family_older_sister.png', 
      jptext: 'roku', 
      entext: 'older sister',
      tapsound: 'sounds/family_members/older sister.wav',
    ),
    CategoryItem(
      image: 'assets/images/family_members/family_son.png', 
      jptext: 'sebun', 
      entext: 'son',
      tapsound: 'sounds/family_members/son.wav',
    ),
    CategoryItem(
      image: 'assets/images/family_members/family_mother.png', 
      jptext: 'hachi', 
      entext: 'mother',
      tapsound: 'sounds/family_members/mother.wav',
    ),
    CategoryItem(
      image: 'assets/images/family_members/family_younger_brother.png', 
      jptext: 'ichi', 
      entext: 'younger brother',
      tapsound: 'sounds/family_members/younger brohter.wav',
    ),
    CategoryItem(
      image: 'assets/images/family_members/family_younger_sister.png', 
      jptext: 'ichi', 
      entext: 'younger sister',
      tapsound: 'sounds/family_members/younger sister.wav',
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
        itemCount: family.length,
        itemBuilder: (context, int index) {  
          return Categorynum(family[index]);
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