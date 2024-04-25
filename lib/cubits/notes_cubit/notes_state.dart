part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NoteSucces extends NotesState {
  final List<NoteModel>notes;

  NoteSucces(this.notes);
}

final class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure(this.errMessage);
}