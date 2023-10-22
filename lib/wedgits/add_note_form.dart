import 'package:flutter/material.dart';
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
          CostumButton(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
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
