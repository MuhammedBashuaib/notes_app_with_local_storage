import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) {
    emit(AddNoteLoding());
    try {
      var notesBox = Hive.box<NoteModel>(MyHiveConstent.kNotesBox);
      notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(erorrMessage: e.toString()));
    }
  }
}
