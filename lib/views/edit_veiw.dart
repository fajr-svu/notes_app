import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/read_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/wedgits/costum_textfield.dart';

class EditView extends StatefulWidget {
  const EditView({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text('Edit Note'),
          actions: [
            IconButton(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();

                Navigator.pop(context);
              },
              icon: const Icon(Icons.done),
            ),
          ]),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 4),
          //child: CostumAppBar(title: 'Edit Note', icon: Icons.done),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
          child: CostumTextField(
            hintText: 'Title',
            onChanged: (value) {
              title = value;
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CostumTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: 'Content',
            maxlines: 10,
          ),
        ),
      ]),
    );
  }
}
