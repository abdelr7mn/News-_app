import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class posts extends StatelessWidget {
  const posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              'assets/sports.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'This is my app that show news about sports like football,vollyball,basketball,tinnes,hoky and handball , if you like it give me our fead in communts',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          'This is my app that show news about sports like football,basketball,tinnes and handball , if you like it give me our fead in communts',
          maxLines: 2,
          style: TextStyle(color: Colors.blueGrey, fontSize: 14),
        )
      ],
    );
  }
}
