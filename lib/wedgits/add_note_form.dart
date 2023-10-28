import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/cubit/add_notes_cubit_cubit.dart';
import 'package:notes_app/models/color_item.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/wedgits/color_listview.dart';
import 'package:notes_app/wedgits/costum_button.dart';
import 'package:notes_app/wedgits/costum_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CostumTextField(
            hintText: 'Title',
            onsaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CostumTextField(
            onsaved: (value) {
              subtitle = value;
            },
            hintText: 'Content',
            maxlines: 6,
          ),
          const SizedBox(
            height: 20,
          ),
          const ColorlistView(),
          const SizedBox(
            height: 20,
          ),
          CostumButton(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var currentDate = DateTime.now();
                var formateDate = DateFormat.yMEd().format(currentDate);
                var noteModel = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: formateDate,
                    color: Colors.blue.value);
                BlocProvider.of<AddNotesCubitCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
