// ignore_for_file: avoid_unnecessary_containers, unnecessary_import, must_be_immutable, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:the_back/component/category.dart';
import 'package:the_back/screens/familypage.dart';
import 'package:the_back/screens/numberpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState(); 
}

class _HomepageState extends State<Homepage> { 
  List topics = [
    'Numbers',
    'Family Members',
    'Colors',
    'Phrases', 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 195, 43, 99),
        title: const Text(
          'Tuko',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Categoryfac(
            'Number',
            Colors.blue, 
            (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return NumberPage();
              }));
            }
          ),
          Categoryfac(
            'Family',
            Colors.deepPurple, 
            (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Familypage();
              }));
              
            }
          ),
        ],
      ),
    );
  }
}

