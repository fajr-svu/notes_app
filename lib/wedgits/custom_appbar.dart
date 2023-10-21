import 'package:flutter/material.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.1),
              borderRadius: BorderRadius.circular(16),
            ),
            width: 40,
            child: Icon(icon),
          ),
        ),
      ],
    );
  }
}
