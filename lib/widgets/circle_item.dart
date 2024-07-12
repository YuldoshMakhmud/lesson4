import 'package:flutter/material.dart';

class CircleItem extends StatelessWidget {
  const CircleItem(
      {super.key, required this.text, this.radius = 120, this.color = Colors
          .blue, this.textSize = 30});

  final String text;
  final double radius;
  final Color color;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      radius: radius,
      child: Center(
        child: Text(text,
          style: TextStyle(color: Colors.black54, fontSize: textSize),
        ),
      ),
    );
  }
}