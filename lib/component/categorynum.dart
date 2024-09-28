// ignore_for_file: must_be_immutable, avoid_unnecessary_containers

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:the_back/models/number.dart';

class Categorynum extends StatelessWidget{
  Categorynum(this.number, {super.key});
  Number number;
  
  @override
  Widget build(context) {
    return Container(
      child: Row(
        children: [
          Container(
            color: Colors.black54,
            child: Image.asset(number.image),
          ),
          const Spacer(flex: 2),
          Column(
            children: [
              Text(number.jptext, style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),),
              Text(number.entext, style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),),
            ],
          ),
          const Spacer(flex: 6),
          IconButton(
            onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource(number.tapsound)); 
            }, 
            icon: const Icon(Icons.play_arrow),
            
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}