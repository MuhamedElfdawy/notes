import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  
  addNOte(NoteModel note) async{
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box(notesBox);
      emit(AddNoteSuccess());
      await noteBox.add(note);
    }on Exception catch(e){
      AddNoteFailure(e.toString());
    }
  }
}
