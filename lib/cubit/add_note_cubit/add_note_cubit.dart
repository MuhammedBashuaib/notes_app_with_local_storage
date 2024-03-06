import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = Colors.blue;

  addNote(NoteModel note) async {
    emit(AddNoteLoding());
    note.color = color.value;
    try {
      var notesBox = Hive.box<NoteModel>(MyHiveConstent.kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(erorrMessage: e.toString()));
    }
  }
}
