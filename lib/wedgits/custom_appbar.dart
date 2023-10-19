import 'package:flutter/material.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.1),
            borderRadius: BorderRadius.circular(16),
          ),
          width: 45,
          child: Icon(
            Icons.search,
          ),
        ),
      ],
      title: Text('Notes'),
    ));
  }
}
