import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  NoteCard({required this.color, required this.title});
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: color),
      //height: 150,
      //width: 300,
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              'Build your career with Fajoora',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
        Text(
          'May 21 , 2023',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ]),
    );
  }
}
