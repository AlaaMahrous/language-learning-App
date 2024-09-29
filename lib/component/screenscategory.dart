// ignore_for_file: must_be_immutable, avoid_unnecessary_containers

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:the_back/models/item.dart';

class Categorynum extends StatelessWidget {
  Categorynum(this.item, {super.key});
  CategoryItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
              color: Colors.black54,
              child: Image.asset(item.image!),
          ),
          const Spacer(flex: 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // ضبط المحاذاة الأفقية للنصوص
            children: [
              Text(
                item.jptext,
                style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
              ),
              Text(
                item.entext,
                style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Spacer(flex: 6),
          IconButton(
            onPressed: () {
              item.playsound();
            },
            icon: const Icon(Icons.play_arrow),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
