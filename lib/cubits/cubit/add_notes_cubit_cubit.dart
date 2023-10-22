import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_notes_cubit_state.dart';

class AddNotesCubitCubit extends Cubit<AddNotesCubitState> {
  AddNotesCubitCubit() : super(AddNotesCubitInitial());

  addNote(NoteModel note) async {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box('notes_box');
      emit(NotesSuccess());
      await notesBox.add(note);
    } catch (e) {
      NotesFailure(errorMessage: e.toString());
    }
  }
}
