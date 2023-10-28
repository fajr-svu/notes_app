import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/wedgits/costum_textfield.dart';

class EditeViewBody extends StatefulWidget {
  const EditeViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeViewBody> createState() => _EditeViewBodyState();
}

class _EditeViewBodyState extends State<EditeViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
    ]);
  }
}
