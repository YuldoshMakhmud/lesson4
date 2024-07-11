import 'package:flutter/material.dart';

class CircleItem extends StatelessWidget {
  const CircleItem({super.key, required this.text,  this.radius = 50, this.color = Colors.blueGrey});
  final String text;
  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 50,
      child: Text(text),
    );
  }
}
