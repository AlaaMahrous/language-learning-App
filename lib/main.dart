// ignore_for_file: avoid_unnecessary_containers, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_back/screens/home.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatefulWidget{
  const TokuApp({super.key});
  
  @override
  State<TokuApp> createState() => _TokuAppState();

}
class _TokuAppState extends State<TokuApp>{

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}




