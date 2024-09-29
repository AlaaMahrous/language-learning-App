// ignore_for_file: must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:the_back/models/item.dart';

class Phrasecategory extends StatelessWidget {
  Phrasecategory(this.item, {super.key});
  CategoryItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const Spacer(flex: 1),
          Container(
            alignment: Alignment.centerLeft,
            height: 100,
            width: 300,
            //color: Colors.cyan,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
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
          ),
          const Spacer(flex: 1),
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
