import 'package:flutter/material.dart';
import 'package:notes_app/wedgits/add_note_form.dart';

class CostumBottomSheet extends StatelessWidget {
  const CostumBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
