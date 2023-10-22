part of 'add_notes_cubit_cubit.dart';

@immutable
sealed class AddNotesCubitState {}

final class AddNotesCubitInitial extends AddNotesCubitState {}

class NotesLoading extends AddNotesCubitState {}

class NotesSuccess extends AddNotesCubitState {}

class NotesFailure extends AddNotesCubitState {
  final String errorMessage;

  NotesFailure({required this.errorMessage});
}
