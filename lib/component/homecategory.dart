
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

//factory design pattern
class Categoryfac extends StatelessWidget {
  Categoryfac(this.text, this.color, this.tap, {super.key});
  final String text;
  final Color color;
  Function()? tap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(left: 25),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
