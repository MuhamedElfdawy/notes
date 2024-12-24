import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color myColor = const Color(0xff003f5c);
  addNote(NoteModel note) async {
    note.color = myColor.value;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(notesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e){
      emit(AddNoteFailure(e.toString()));
    }
  }
}
