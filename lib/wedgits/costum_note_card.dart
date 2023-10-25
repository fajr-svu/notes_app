import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/read_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'EditView');
      },
      child: Container(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(note.color)),
        //height: 150,
        //width: 300,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: Text(
              note.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                note.subtitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                note.delete();
                BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
              },
            ),
          ),
          Text(
            note.date,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ]),
      ),
    );
  }
}
