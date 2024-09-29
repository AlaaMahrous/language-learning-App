// ignore_for_file: avoid_unnecessary_containers, unnecessary_import, must_be_immutable, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:the_back/component/homecategory.dart';
import 'package:the_back/screens/colorpage.dart';
import 'package:the_back/screens/familypage.dart';
import 'package:the_back/screens/numberpage.dart';
import 'package:the_back/screens/phrasespage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState(); 
}

class _HomepageState extends State<Homepage> { 
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
            'Numbers',
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
          Categoryfac(
            'Colors',
            Colors.yellow, 
            (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ColorPage();
              }));
              
            }
          ),
          Categoryfac(
            'Phrases',
            Colors.orange, 
            (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Phrasespage();
              }));
              
            }
          ),
        ],
      ),
    );
  }
}

