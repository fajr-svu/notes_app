import 'package:flutter/material.dart';
import 'package:notes_app/wedgits/costum_note_card.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('Notes'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ]),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              NoteCard(
                color: Color(0xffFFCC80),
                title: 'Flutter tips',
              ),
            ],
          ),
        ));
  }
}
