import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isChosed, required this.color});
  final bool isChosed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isChosed
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: color,
          );
  }
}
