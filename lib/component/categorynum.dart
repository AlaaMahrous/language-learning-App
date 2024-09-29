// ignore_for_file: must_be_immutable, avoid_unnecessary_containers

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:the_back/component/item.dart';
import 'package:the_back/models/family.dart';

class Categorynum extends StatelessWidget{
  Categorynum(this.item, {super.key});
  CategoryItem item;
  
  @override
  Widget build(context) {
    return Container(
      child: Row(
        children: [
          Container(
            color: Colors.black54,
            child: Image.asset(item.image),
          ),
          const Spacer(flex: 2),
          Column(
            children: [
              Text(item.jptext, style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),),
              Text(item.entext, style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),),
              if (item is Family)
                Text((item as Family).word, style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),),
            ],
          ),
          const Spacer(flex: 6),
          IconButton(
            onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource(item.tapsound)); 
            }, 
            icon: const Icon(Icons.play_arrow),
            
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}