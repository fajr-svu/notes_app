import 'package:flutter/material.dart';
import 'package:notes_app/wedgits/costum_note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: NoteCard(
            color: Color(0xffFFCC80),
            title: 'Flutter tips',
          ),
        );
      },
      itemCount: 10,
    );
  }
}
