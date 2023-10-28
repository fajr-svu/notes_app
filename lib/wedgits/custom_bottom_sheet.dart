import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/add_notes_cubit_cubit.dart';
import 'package:notes_app/cubits/cubit/read_notes_cubit.dart';
import 'package:notes_app/wedgits/add_note_form.dart';

class CostumBottomSheet extends StatelessWidget {
  const CostumBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubitCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNotesCubitCubit, AddNotesCubitState>(
          listener: (context, state) {
            if (state is NotesSuccess) {
              BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
            if (state is NotesFailure) {
              print('failed ${state.errorMessage}');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is NotesLoading ? true : false,
                child: SingleChildScrollView(child: AddNoteForm()));
          },
        ),
      ),
    );
  }
}
